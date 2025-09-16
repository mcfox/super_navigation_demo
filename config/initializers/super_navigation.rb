# frozen_string_literal: true

# Configuração do SuperNavigation
SuperNavigation.configure do |config|
  config.auto_highlight = true
  config.selected_class = 'active'

  config.menu do
    item :dashboard, 'Dashboard', 'Visão geral do sistema', 'fas fa-tachometer-alt', '/dashboard'

    item :users, 'Usuários', 'Gerenciamento de usuários', 'fas fa-users', '/users' do
      item :user_list, 'Lista de Usuários', 'Ver todos os usuários', 'fas fa-list', '/users'
      item :new_user, 'Novo Usuário', 'Cadastrar novo usuário', 'fas fa-user-plus', '/users/new'
      item :user_edit, 'Editar Usuário', 'Editar informações do usuário', 'fas fa-user-edit', '/users/edit'
      item :user_roles, 'Perfis de Acesso', 'Gerenciar perfis de usuário', 'fas fa-user-tag', '/users/roles'
      item :user_permissions, 'Permissões', 'Configurar permissões', 'fas fa-key', '/users/permissions'
    end

    item :products, 'Produtos', 'Catálogo de produtos', 'fas fa-box', '/products' do
      item :product_list, 'Lista de Produtos', 'Ver todos os produtos', 'fas fa-boxes', '/products'
      item :new_product, 'Novo Produto', 'Adicionar novo produto', 'fas fa-plus-square', '/products/new'
      item :product_categories, 'Categorias', 'Gerenciar categorias', 'fas fa-tags', '/products/categories'
      item :product_inventory, 'Estoque', 'Controle de estoque', 'fas fa-warehouse', '/products/inventory'
      item :product_pricing, 'Preços', 'Gerenciar preços', 'fas fa-dollar-sign', '/products/pricing'
    end

    item :orders, 'Pedidos', 'Gerenciamento de pedidos', 'fas fa-shopping-cart', '/orders' do
      item :order_list, 'Lista de Pedidos', 'Ver todos os pedidos', 'fas fa-list-alt', '/orders'
      item :new_order, 'Novo Pedido', 'Criar novo pedido', 'fas fa-cart-plus', '/orders/new'
      item :order_pending, 'Pedidos Pendentes', 'Pedidos aguardando processamento', 'fas fa-clock', '/orders/pending'
      item :order_shipped, 'Pedidos Enviados', 'Pedidos já enviados', 'fas fa-shipping-fast', '/orders/shipped'
      item :order_completed, 'Pedidos Concluídos', 'Pedidos finalizados', 'fas fa-check-circle', '/orders/completed'
    end

    item :customers, 'Clientes', 'Gerenciamento de clientes', 'fas fa-user-friends', '/customers' do
      item :customer_list, 'Lista de Clientes', 'Ver todos os clientes', 'fas fa-address-book', '/customers'
      item :new_customer, 'Novo Cliente', 'Cadastrar novo cliente', 'fas fa-user-plus', '/customers/new'
      item :customer_groups, 'Grupos de Clientes', 'Organizar clientes em grupos', 'fas fa-users-cog', '/customers/groups'
      item :customer_analytics, 'Analytics de Clientes', 'Análise de comportamento', 'fas fa-chart-pie', '/customers/analytics'
    end

    item :reports, 'Relatórios', 'Relatórios e análises', 'fas fa-chart-bar', '/reports' do
      item :sales_report, 'Relatório de Vendas', 'Análise de vendas', 'fas fa-chart-line', '/reports/sales'
      item :inventory_report, 'Relatório de Estoque', 'Status do estoque', 'fas fa-boxes', '/reports/inventory'
      item :customer_report, 'Relatório de Clientes', 'Análise de clientes', 'fas fa-users', '/reports/customers'
      item :financial_report, 'Relatório Financeiro', 'Análise financeira', 'fas fa-money-bill-wave', '/reports/financial'
      item :custom_report, 'Relatórios Personalizados', 'Criar relatórios customizados', 'fas fa-cogs', '/reports/custom'
    end

    item :marketing, 'Marketing', 'Ferramentas de marketing', 'fas fa-bullhorn', '/marketing' do
      item :campaigns, 'Campanhas', 'Gerenciar campanhas', 'fas fa-envelope', '/marketing/campaigns'
      item :newsletters, 'Newsletters', 'Envio de newsletters', 'fas fa-newspaper', '/marketing/newsletters'
      item :promotions, 'Promoções', 'Criar promoções', 'fas fa-percent', '/marketing/promotions'
      item :social_media, 'Redes Sociais', 'Integração com redes sociais', 'fas fa-share-alt', '/marketing/social'
    end

    item :analytics, 'Analytics', 'Análises e métricas', 'fas fa-chart-pie', '/analytics' do
      item :dashboard_analytics, 'Dashboard Analytics', 'Visão geral das métricas', 'fas fa-tachometer-alt', '/analytics/dashboard'
      item :traffic_analytics, 'Análise de Tráfego', 'Métricas de visitação', 'fas fa-globe', '/analytics/traffic'
      item :conversion_analytics, 'Análise de Conversão', 'Taxa de conversão', 'fas fa-funnel-dollar', '/analytics/conversion'
      item :user_behavior, 'Comportamento do Usuário', 'Análise de comportamento', 'fas fa-user-chart', '/analytics/behavior'
      item :performance_metrics, 'Métricas de Performance', 'Performance do sistema', 'fas fa-tachometer-alt', '/analytics/performance'
    end

    item :integrations, 'Integrações', 'Integrações com sistemas externos', 'fas fa-plug', '/integrations' do
      item :api_management, 'Gerenciamento de APIs', 'Configurar APIs', 'fas fa-code', '/integrations/apis'
      item :webhooks, 'Webhooks', 'Configurar webhooks', 'fas fa-link', '/integrations/webhooks'
      item :third_party, 'Sistemas Terceiros', 'Integração com terceiros', 'fas fa-handshake', '/integrations/third-party'
      item :data_sync, 'Sincronização de Dados', 'Sincronizar dados', 'fas fa-sync', '/integrations/sync'
    end

    item :settings, 'Configurações', 'Configurações do sistema', 'fas fa-cog', '/settings' do
      item :general_settings, 'Configurações Gerais', 'Configurações básicas', 'fas fa-cogs', '/settings/general'
      item :security_settings, 'Segurança', 'Configurações de segurança', 'fas fa-shield-alt', '/settings/security'
      item :notification_settings, 'Notificações', 'Configurar notificações', 'fas fa-bell', '/settings/notifications'
      item :backup_settings, 'Backup', 'Configurações de backup', 'fas fa-database', '/settings/backup'
      item :profile_settings, 'Meu Perfil', 'Editar informações do perfil', 'fas fa-user-circle', '/settings/profile'
    end
  end
end
