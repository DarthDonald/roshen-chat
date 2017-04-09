import { Injectable } from '@angular/core';
import { Headers, Http } from '@angular/http';

import 'rxjs/add/operator/toPromise';

import { SignUp } from './sign-up';

@Injectable()
export class SignUpService {

  private signUpUrl = 'api/user';  // URL to web api
    
  constructor(private http: Http) { }

  sentUser(name, email, password, password_confirmation): Promise<SignUp[]> {
    return this.http.post(this.signUpUrl, {
                    name: name,
                    email:email,
                    password: password,
                    password_confirmation: password_confirmation
               })
               .toPromise()
               .then(response => response.json().data as SignUp)
               .catch(this.handleError);
  }

  private handleError(error: any): Promise<any> {
    console.error('An error occurred', error); // for demo purposes only
    return Promise.reject(error.message || error);
  }

}
