Rails.application.routes.draw do
  # 使用 /rails/db  去搭建自定义查询模块
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'test'=>'test#index'
end
