FROM ruby:3.4

WORKDIR /HTTPARTY

COPY Gemfile ./

RUN bundle install

COPY . .

CMD ["cucumber", "--format", "json", "--out", "/reports/report.json"]