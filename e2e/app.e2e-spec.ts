import { RoshenChatPage } from './app.po';

describe('roshen-chat App', function() {
  let page: RoshenChatPage;

  beforeEach(() => {
    page = new RoshenChatPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
