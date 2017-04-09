import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';
import { RouterModule, Routes } from '@angular/router';

import { AppComponent } from './app.component';
import { SignInComponent } from './sign-in/sign-in.component';
import { SignUpComponent } from './sign-up/sign-up.component';
import { WelcomePageComponent } from './welcome-page/welcome-page.component';
import { ChatListComponent } from './chat-list/chat-list.component';
import { ChatPageComponent } from './chat-page/chat-page.component';

import { SignInService } from './sign-in.service';
import { SignUpService } from './sign-up.service';
import { MessagesService } from './messages.service';
import { ChatsService } from './chats.service';

const routes: Routes = [
  {
    path: '',
    component: WelcomePageComponent
  },
  {
    path: 'sign-in',
    component: SignInComponent
  },
  {
    path: 'sign-up',
    component: SignUpComponent
  },
  {
    path: 'chat-list',
    component: ChatListComponent
  },
  {
    path: 'chat-page',
    component: ChatPageComponent
  }
];

@NgModule({
  imports: [
    BrowserModule,
    FormsModule,
    HttpModule,
    RouterModule.forRoot(routes)
  ],
  declarations: [
    AppComponent,
    SignInComponent,
    SignUpComponent,
    WelcomePageComponent,
    ChatListComponent,
    ChatPageComponent
  ],
  providers: [
      SignInService,
      SignUpService,
      ChatsService,
      MessagesService
  ],
  bootstrap: [AppComponent]
})
export class AppModule { RouterModule }
