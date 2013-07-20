Feature: Reviews

  Scenario: See all visible review
    Given there is a review with the content "Help me! My bear Oliver looks like a hedgehog!"
    And there is a review with the content "I'm a sugar-boy" that is moderated
    When I go to the root page
    Then I should see "I'm a sugar-boy"
    And I should not see "Help me! My bear Oliver looks like a hedgehog!"

@javascript
  Scenario: Add new review
    Given I am on the root page
    When I follow "show-send-review_form"
    When I fill in "Подпись" with "Hedgehog-paladin"
    And I press "Отправить"
    Then I should see "не может быть пустым"
    When I fill in "Текст отзыва" with "I will destroy your castle! }:-O"
    And I press "Отправить"
    Then I should see "Ваш отзыв отправлен на модерацию"

  Scenario: Make review is "moderated"
    Given there is a admin user with the email "admin@example.com"
    And there is a review with the content "Why my hedgehog started eating the bears?"
    And I go to the admin root page
    When I fill in "Емайл" with "admin@example.com"
    And I fill in "Пароль" with "password"
    Then I press "Войти"
    When I go to the admin reviews page
    And I follow "Изменить"
    When I check "Прошёл модерацию"
    And I press "Обновить"
    Then I should see "Прошёл модерацию true"
