import { Injectable } from '@angular/core';
import { Headers, Http } from '@angular/http';

import 'rxjs/add/operator/toPromise';

import { SignIn } from './sign-in';

@Injectable()
export class SignInService {
    
  private signInUrl = 'api/session';  // URL to web api

  constructor(private http: Http) { }

  signIn(): Promise<SignIn[]> {
    return this.http.get(this.signInUrl)
               .toPromise()
               .then(response => response.json().data as SignIn)
               .catch(this.handleError);
  }

  signOut(): () > {
    return this.http.delete(this.signInUrl)
               .then(response => response.json().data)
               .catch(this.handleError);
  }

  private handleError(error: any): Promise<any> {
    console.error('An error occurred', error); // for demo purposes only
    return Promise.reject(error.message || error);
  }

}
