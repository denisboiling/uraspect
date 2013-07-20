Feature: Jurisprudences

 Scenario: I go to the jurisprudence_show
  Given there is a jurisprudence with the name "Sale hedgehogs" and the content "Hedgehogs is sweet"
  When I am on the root page
  And I should see "Sale hedgehogs"  
  And I follow "Sale hedgehogs" 
  Then I should see "Hedgehogs is sweet"

 Scenario:  I go to the jurisprudence_index
  Given there is a jurisprudence with the name "Sale hedgehogs" and the content "Hedgehogs is sweety"
  Given there is a jurisprudence with the name "Sale ducs" and the content "Ducs is very sweet"
  When I am on the root page
  And I should see "Вся судебная практика"  
  And I follow "Вся судебная практика" 
  Then I should see "Sale hedgehogs"
  Then I should see "Sale ducs"
