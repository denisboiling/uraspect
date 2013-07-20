#coding: utf-8

Page.reset_column_information
FactoryGirl.create(:page, slug: 'index',              name: 'Главная')
FactoryGirl.create(:page, slug: 'our_services',       name: 'Наши услуги ')
FactoryGirl.create(:page, slug: 'order_of_services',  name: 'Заказ услуг')
FactoryGirl.create(:page, slug: 'help_for_clients',   name: 'В помощь клиенту')
FactoryGirl.create(:page, slug: 'leave_a_comment',    name: 'Оставить отзыв')
FactoryGirl.create(:page, slug: 'contacts',           name: 'Контакты')
FactoryGirl.create(:page, slug: 'price_of_services',  name: 'Стоимость услуг')
