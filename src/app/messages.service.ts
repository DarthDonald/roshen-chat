import { Injectable } from '@angular/core';
import { Headers, Http } from '@angular/http';

import 'rxjs/add/operator/toPromise';

import { Messages } from './messages';

@Injectable()
export class MessagesService {
    
    private messagesUrl = 'api/messages';
    private messageUrl = 'api/message';

    constructor(private http: Http) { }

    getMessages(): Promise<Messages[]> {
        return this.http.get(this.messagesUrl)
               .toPromise()
               .then(response => response.json().data as Messages)
               .catch(this.handleError);
    }

    sentMessage(message): Promise<Messages[]> {
        return this.http.post(this.messagesUrl, message)
               .toPromise()
               .then(response => response.json().data as Messages)
               .catch(this.handleError);
    }

    editMessage(message): Promise<Messages[]> {
        return this.http.patch(this.messageUrl, message)
               .toPromise()
               .then(response => response.json().data as Messages)
               .catch(this.handleError);
    }

    deleteMessage() {
        return this.http.delete(this.messageUrl);
    }

    private handleError(error: any): Promise<any> {
        console.error('An error occurred', error); // for demo purposes only
        return Promise.reject(error.message || error);

    }

}
