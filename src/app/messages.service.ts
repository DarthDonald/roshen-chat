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

    sentMessage(): Promise<Messages[]> {
        return this.http.post(this.messagesUrl)
               .toPromise()
               .then(response => response.json().data as Messages)
               .catch(this.handleError);
    }

    editMessage(): Promise<Messages[]> {
        return this.http.patch(this.messageUrl)
               .toPromise()
               .then(response => response.json().data as Messages)
               .catch(this.handleError);
    }

    deleteMessage(): Promise<Messages[]> {
        return this.http.delete(this.messageUrl)
               .toPromise()
               .then(response => response.json().data as Messages)
               .catch(this.handleError);
    }

    private handleError(error: any): Promise<any> {
        console.error('An error occurred', error); // for demo purposes only
        return Promise.reject(error.message || error);

    }

}
