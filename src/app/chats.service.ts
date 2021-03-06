import { Injectable } from '@angular/core';
import { Headers, Http } from '@angular/http';

import 'rxjs/add/operator/toPromise';

import { Chats } from './chats';

@Injectable()
export class ChatsService {
    
  private chatsUrl = 'api/chats';  
  private chatUrl = 'api/chats';  // URL to web api

  constructor(private http: Http) { }

  getChats(): Promise<Chats[]> {
    return this.http.get(this.chatsUrl)
               .toPromise()
               .then(response => response.json().data as Chats)
               .catch(this.handleError);
  }

  createChats(chat): Promise<Chats[]> {
    return this.http.post(this.chatsUrl, chat)
               .toPromise()
               .then(response => response.json().data as Chats)
               .catch(this.handleError);
  }

  deleteChats() {
    return this.http.delete(this.chatUrl);
  }

  updateChats(chat): Promise<Chats[]> {
    return this.http.patch(this.chatUrl, chat)
               .toPromise()
               .then(response => response.json().data as Chats)
               .catch(this.handleError);
  }

  private handleError(error: any): Promise<any> {
    console.error('An error occurred', error); // for demo purposes only
    return Promise.reject(error.message || error);
  }
}
