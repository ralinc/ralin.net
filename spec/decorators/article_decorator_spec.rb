require 'rails_helper'

describe ArticleDecorator do
  it 'converts markdown to html' do
    article = build :article, content: '**markdown** content *here*'

    html = article.decorate.markdown

    expect(html).to eq('<p><strong>markdown</strong> content <em>here</em></p>')
  end
end