/* tslint:disable:no-unused-variable */

import { TestBed, async, inject } from '@angular/core/testing';
import { ChatsService } from './chats.service';

describe('ChatsService', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [ChatsService]
    });
  });

  it('should ...', inject([ChatsService], (service: ChatsService) => {
    expect(service).toBeTruthy();
  }));
});
