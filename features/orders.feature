Feature: Order

@javascript
  Scenario: Open page from root page
    Given there is a admin user with the email "admin@example.com"  
    Given there is a page with the name "Заказ услуг" and the slug "order_of_services"
    When I am on the root page
    And I should see "Заказ услуг"
    And I follow "Заказ услуг"
    When I fill in "Фамилия" with "Amazing"
    And I press "Отправить"
    Then I should see "не может быть пустым"
    When I fill in "Имя" with "Hedgehog"
    When I fill in "Email" with "Amazing@yandex.com"
    When I fill in "Заказ" with "Hedgehog is amazing animal"
    When I fill in "Телефон" with "988223"
    And I press "Отправить"
    Then "admin@example.com" should receive an email with subject "Заказ услуг"
    Then I should see "спасибо"
