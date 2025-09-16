# Demo App - SuperNavigation

Este é um projeto de demonstração para a gem `super_navigation`, que oferece um menu de duas colunas com funcionalidades de pesquisa, favoritos e itens recentes, integrado a uma aplicação Ruby on Rails.

## Instalação e Configuração

Siga os passos abaixo para configurar e executar este projeto de demonstração:

### 1. Clone o repositório da gem `super_navigation`

Primeiro, certifique-se de ter o projeto da gem `super_navigation` disponível localmente. Se você já o tem, pule para o próximo passo. Caso contrário, você pode usar o arquivo compactado que foi fornecido anteriormente e descompactá-lo em um diretório irmão a este `demo_app`.

```bash
tar -xzvf super_navigation.tar.gz
```

Certifique-se de que a estrutura de diretórios seja a seguinte:

```
.
├── demo_app/
└── super_navigation/
```

### 2. Adicione a gem ao Gemfile

No `Gemfile` do seu projeto Rails (`demo_app/Gemfile`), adicione a seguinte linha para referenciar a gem localmente:

```ruby
gem 'super_navigation', path: '../super_navigation'
```

Em seguida, instale as gems:

```bash
bundle install
```

### 3. Configure a DSL do Menu

Crie um arquivo de inicialização para definir a estrutura do seu menu. Crie o arquivo `config/initializers/super_navigation.rb` com o seguinte conteúdo:

```ruby
# config/initializers/super_navigation.rb

SuperNavigation.configure do |config|
  config.define do |menu|
    menu.item :dashboard, 'Dashboard', '#', icon: 'fas fa-tachometer-alt', description: 'Visão geral do sistema' do
      menu.item :overview, 'Visão Geral', '/dashboard/overview', icon: 'fas fa-chart-line', description: 'Dados e gráficos importantes'
      menu.item :alerts, 'Alertas', '/dashboard/alerts', icon: 'fas fa-bell', description: 'Notificações e avisos'
      menu.item :settings, 'Configurações', '/dashboard/settings', icon: 'fas fa-cog', description: 'Ajustes do dashboard'
    end

    menu.item :users, 'Usuários', '#', icon: 'fas fa-users', description: 'Gerenciamento de usuários' do
      menu.item :user_list, 'Lista de Usuários', '/users', icon: 'fas fa-list', description: 'Ver todos os usuários'
      menu.item :new_user, 'Novo Usuário', '/users/new', icon: 'fas fa-user-plus', description: 'Cadastrar novo usuário'
      menu.item :edit_user, 'Editar Usuário', '/users/edit', icon: 'fas fa-user-edit', description: 'Editar informações do usuário'
      menu.item :access_profiles, 'Perfis de Acesso', '/users/profiles', icon: 'fas fa-id-card', description: 'Gerenciar perfis de usuário'
      menu.item :permissions, 'Permissões', '/users/permissions', icon: 'fas fa-shield-alt', description: 'Configurar permissões'
      menu.item :roles, 'Cargos', '/users/roles', icon: 'fas fa-user-tag', description: 'Definir cargos e responsabilidades'
      menu.item :activity_log, 'Log de Atividades', '/users/activity', icon: 'fas fa-history', description: 'Ver histórico de ações dos usuários'
      menu.item :blocked_users, 'Usuários Bloqueados', '/users/blocked', icon: 'fas fa-ban', description: 'Gerenciar usuários bloqueados'
      menu.item :user_groups, 'Grupos de Usuários', '/users/groups', icon: 'fas fa-users-cog', description: 'Organizar usuários em grupos'
      menu.item :user_settings, 'Configurações de Usuário', '/users/settings', icon: 'fas fa-user-cog', description: 'Preferências e configurações individuais'
      menu.item :user_reports, 'Relatórios de Usuário', '/users/reports', icon: 'fas fa-chart-pie', description: 'Relatórios sobre a base de usuários'
      menu.item :user_onboarding, 'Onboarding de Usuários', '/users/onboarding', icon: 'fas fa-user-check', description: 'Processo de integração de novos usuários'
      menu.item :user_support, 'Suporte ao Usuário', '/users/support', icon: 'fas fa-headset', description: 'Canais de suporte e ajuda'
      menu.item :user_feedback, 'Feedback de Usuários', '/users/feedback', icon: 'fas fa-comment-dots', description: 'Coletar feedback dos usuários'
      menu.item :user_audit, 'Auditoria de Usuários', '/users/audit', icon: 'fas fa-clipboard-check', description: 'Auditoria de conformidade de usuários'
    end

    menu.item :products, 'Produtos', '#', icon: 'fas fa-box', description: 'Catálogo de produtos' do
      menu.item :product_list, 'Lista de Produtos', '/products', icon: 'fas fa-boxes', description: 'Ver todos os produtos'
      menu.item :new_product, 'Novo Produto', '/products/new', icon: 'fas fa-plus-square', description: 'Adicionar novo produto'
      menu.item :categories, 'Categorias', '/products/categories', icon: 'fas fa-tags', description: 'Gerenciar categorias de produtos'
      menu.item :stock, 'Estoque', '/products/stock', icon: 'fas fa-warehouse', description: 'Controle de estoque'
      menu.item :pricing, 'Precificação', '/products/pricing', icon: 'fas fa-dollar-sign', description: 'Definir preços e promoções'
      menu.item :suppliers, 'Fornecedores', '/products/suppliers', icon: 'fas fa-truck-loading', description: 'Gerenciar fornecedores'
      menu.item :product_reviews, 'Avaliações', '/products/reviews', icon: 'fas fa-star-half-alt', description: 'Ver avaliações de produtos'
      menu.item :product_variants, 'Variantes', '/products/variants', icon: 'fas fa-th-large', description: 'Gerenciar variantes de produtos'
      menu.item :product_bundles, 'Combos', '/products/bundles', icon: 'fas fa-gift', description: 'Criar combos de produtos'
      menu.item :product_attributes, 'Atributos', '/products/attributes', icon: 'fas fa-sliders-h', description: 'Definir atributos de produtos'
      menu.item :product_import_export, 'Importar/Exportar', '/products/import_export', icon: 'fas fa-file-import', description: 'Importar e exportar produtos'
      menu.item :product_seo, 'SEO de Produtos', '/products/seo', icon: 'fas fa-globe', description: 'Otimização de busca para produtos'
      menu.item :product_analytics, 'Analytics de Produtos', '/products/analytics', icon: 'fas fa-chart-bar', description: 'Análise de desempenho de produtos'
      menu.item :product_discounts, 'Descontos', '/products/discounts', icon: 'fas fa-percent', description: 'Gerenciar descontos e cupons'
      menu.item :product_recommendations, 'Recomendações', '/products/recommendations', icon: 'fas fa-thumbs-up', description: 'Configurar recomendações de produtos'
    end

    menu.item :orders, 'Pedidos', '#', icon: 'fas fa-shopping-cart', description: 'Gerenciamento de pedidos' do
      menu.item :order_list, 'Lista de Pedidos', '/orders', icon: 'fas fa-receipt', description: 'Ver todos os pedidos'
      menu.item :new_order, 'Novo Pedido', '/orders/new', icon: 'fas fa-cart-plus', description: 'Criar novo pedido'
      menu.item :order_status, 'Status de Pedidos', '/orders/status', icon: 'fas fa-truck', description: 'Acompanhar status de entrega'
      menu.item :order_history, 'Histórico de Pedidos', '/orders/history', icon: 'fas fa-history', description: 'Ver histórico de compras'
      menu.item :returns, 'Devoluções', '/orders/returns', icon: 'fas fa-undo', description: 'Gerenciar devoluções'
      menu.item :invoices, 'Faturas', '/orders/invoices', icon: 'fas fa-file-invoice-dollar', description: 'Gerar e gerenciar faturas'
      menu.item :shipping, 'Envio', '/orders/shipping', icon: 'fas fa-shipping-fast', description: 'Configurações de envio'
      menu.item :payments, 'Pagamentos', '/orders/payments', icon: 'fas fa-credit-card', description: 'Gerenciar pagamentos'
      menu.item :order_tracking, 'Rastreamento', '/orders/tracking', icon: 'fas fa-map-marker-alt', description: 'Rastrear pedidos'
      menu.item :order_notes, 'Notas de Pedido', '/orders/notes', icon: 'fas fa-sticky-note', description: 'Adicionar notas aos pedidos'
      menu.item :order_export, 'Exportar Pedidos', '/orders/export', icon: 'fas fa-file-export', description: 'Exportar dados de pedidos'
      menu.item :order_analytics, 'Analytics de Pedidos', '/orders/analytics', icon: 'fas fa-chart-line', description: 'Análise de vendas e pedidos'
      menu.item :order_fulfillment, 'Processamento', '/orders/fulfillment', icon: 'fas fa-boxes', description: 'Processamento e embalagem de pedidos'
      menu.item :order_disputes, 'Disputas', '/orders/disputes', icon: 'fas fa-gavel', description: 'Gerenciar disputas de pedidos'
      menu.item :order_automation, 'Automação', '/orders/automation', icon: 'fas fa-robot', description: 'Automatizar processos de pedidos'
    end

    menu.item :clients, 'Clientes', '#', icon: 'fas fa-address-book', description: 'Gerenciamento de clientes' do
      menu.item :client_list, 'Lista de Clientes', '/clients', icon: 'fas fa-users', description: 'Ver todos os clientes'
      menu.item :new_client, 'Novo Cliente', '/clients/new', icon: 'fas fa-user-plus', description: 'Cadastrar novo cliente'
      menu.item :client_segments, 'Segmentos', '/clients/segments', icon: 'fas fa-layer-group', description: 'Segmentar clientes'
      menu.item :client_history, 'Histórico', '/clients/history', icon: 'fas fa-history', description: 'Histórico de compras e interações'
      menu.item :client_feedback, 'Feedback', '/clients/feedback', icon: 'fas fa-comment-alt', description: 'Feedback e avaliações de clientes'
      menu.item :client_support, 'Suporte', '/clients/support', icon: 'fas fa-headset', description: 'Canais de suporte ao cliente'
      menu.item :client_loyalty, 'Fidelidade', '/clients/loyalty', icon: 'fas fa-award', description: 'Programas de fidelidade'
      menu.item :client_communication, 'Comunicação', '/clients/communication', icon: 'fas fa-envelope', description: 'Ferramentas de comunicação com clientes'
      menu.item :client_data, 'Dados do Cliente', '/clients/data', icon: 'fas fa-database', description: 'Gerenciar dados e privacidade do cliente'
      menu.item :client_analytics, 'Analytics de Clientes', '/clients/analytics', icon: 'fas fa-chart-pie', description: 'Análise do comportamento do cliente'
      menu.item :client_onboarding, 'Onboarding de Clientes', '/clients/onboarding', icon: 'fas fa-user-check', description: 'Processo de integração de novos clientes'
      menu.item :client_billing, 'Faturamento', '/clients/billing', icon: 'fas fa-file-invoice', description: 'Gerenciar faturamento e pagamentos de clientes'
      menu.item :client_contracts, 'Contratos', '/clients/contracts', icon: 'fas fa-file-contract', description: 'Gerenciar contratos de clientes'
      menu.item :client_referrals, 'Indicações', '/clients/referrals', icon: 'fas fa-share-alt', description: 'Programas de indicação de clientes'
      menu.item :client_surveys, 'Pesquisas', '/clients/surveys', icon: 'fas fa-poll', description: 'Realizar pesquisas com clientes'
    end

    menu.item :reports, 'Relatórios', '#', icon: 'fas fa-chart-bar', description: 'Relatórios e análises' do
      menu.item :sales_reports, 'Vendas', '/reports/sales', icon: 'fas fa-chart-line', description: 'Relatórios de vendas'
      menu.item :financial_reports, 'Financeiro', '/reports/financial', icon: 'fas fa-dollar-sign', description: 'Relatórios financeiros'
      menu.item :user_reports, 'Usuários', '/reports/users', icon: 'fas fa-users', description: 'Relatórios de usuários'
      menu.item :product_reports, 'Produtos', '/reports/products', icon: 'fas fa-box', description: 'Relatórios de produtos'
      menu.item :marketing_reports, 'Marketing', '/reports/marketing', icon: 'fas fa-bullhorn', description: 'Relatórios de marketing'
      menu.item :custom_reports, 'Personalizados', '/reports/custom', icon: 'fas fa-cogs', description: 'Criar relatórios personalizados'
      menu.item :export_reports, 'Exportar', '/reports/export', icon: 'fas fa-file-export', description: 'Exportar relatórios'
      menu.item :scheduled_reports, 'Agendados', '/reports/scheduled', icon: 'fas fa-clock', description: 'Gerenciar relatórios agendados'
      menu.item :performance_reports, 'Desempenho', '/reports/performance', icon: 'fas fa-chart-area', description: 'Relatórios de desempenho'
      menu.item :inventory_reports, 'Estoque', '/reports/inventory', icon: 'fas fa-warehouse', description: 'Relatórios de estoque'
      menu.item :customer_reports, 'Clientes', '/reports/customers', icon: 'fas fa-address-book', description: 'Relatórios de clientes'
      menu.item :website_reports, 'Website', '/reports/website', icon: 'fas fa-globe', description: 'Relatórios de tráfego do site'
      menu.item :email_reports, 'Email', '/reports/email', icon: 'fas fa-envelope', description: 'Relatórios de campanhas de email'
      menu.item :social_media_reports, 'Mídias Sociais', '/reports/social_media', icon: 'fas fa-share-alt', description: 'Relatórios de mídias sociais'
      menu.item :security_reports, 'Segurança', '/reports/security', icon: 'fas fa-shield-alt', description: 'Relatórios de segurança'
    end

    menu.item :marketing, 'Marketing', '#', icon: 'fas fa-bullhorn', description: 'Ferramentas de marketing' do
      menu.item :campaigns, 'Campanhas', '/marketing/campaigns', icon: 'fas fa-bullhorn', description: 'Gerenciar campanhas de marketing'
      menu.item :email_marketing, 'Email Marketing', '/marketing/email', icon: 'fas fa-envelope-open-text', description: 'Criar e enviar campanhas de email'
      menu.item :social_media, 'Mídias Sociais', '/marketing/social', icon: 'fas fa-share-alt', description: 'Gerenciar posts em mídias sociais'
      menu.item :seo, 'SEO', '/marketing/seo', icon: 'fas fa-search-dollar', description: 'Otimização para motores de busca'
      menu.item :ads, 'Anúncios', '/marketing/ads', icon: 'fas fa-ad', description: 'Gerenciar campanhas de anúncios'
      menu.item :coupons, 'Cupons', '/marketing/coupons', icon: 'fas fa-gift', description: 'Criar e gerenciar cupons de desconto'
      menu.item :landing_pages, 'Landing Pages', '/marketing/landing_pages', icon: 'fas fa-file-alt', description: 'Criar landing pages'
      menu.item :blog, 'Blog', '/marketing/blog', icon: 'fas fa-blog', description: 'Gerenciar posts do blog'
      menu.item :affiliates, 'Afiliados', '/marketing/affiliates', icon: 'fas fa-handshake', description: 'Gerenciar programas de afiliados'
      menu.item :webinars, 'Webinars', '/marketing/webinars', icon: 'fas fa-video', description: 'Organizar e promover webinars'
      menu.item :contests, 'Concursos', '/marketing/contests', icon: 'fas fa-trophy', description: 'Criar e gerenciar concursos'
      menu.item :popups, 'Pop-ups', '/marketing/popups', icon: 'fas fa-window-restore', description: 'Criar pop-ups para o site'
      menu.item :push_notifications, 'Notificações Push', '/marketing/push', icon: 'fas fa-bell', description: 'Enviar notificações push'
      menu.item :sms_marketing, 'SMS Marketing', '/marketing/sms', icon: 'fas fa-sms', description: 'Campanhas de marketing por SMS'
      menu.item :integrations, 'Integrações', '/marketing/integrations', icon: 'fas fa-puzzle-piece', description: 'Integrar com outras ferramentas de marketing'
    end

    menu.item :analytics, 'Analytics', '#', icon: 'fas fa-chart-pie', description: 'Análises e métricas' do
      menu.item :overview, 'Visão Geral', '/analytics/overview', icon: 'fas fa-chart-line', description: 'Visão geral das métricas'
      menu.item :traffic, 'Tráfego', '/analytics/traffic', icon: 'fas fa-globe', description: 'Análise de tráfego do site'
      menu.item :conversions, 'Conversões', '/analytics/conversions', icon: 'fas fa-exchange-alt', description: 'Taxas de conversão'
      menu.item :sales, 'Vendas', '/analytics/sales', icon: 'fas fa-dollar-sign', description: 'Análise de vendas'
      menu.item :users, 'Usuários', '/analytics/users', icon: 'fas fa-users', description: 'Comportamento do usuário'
      menu.item :products, 'Produtos', '/analytics/products', icon: 'fas fa-box', description: 'Desempenho de produtos'
      menu.item :marketing, 'Marketing', '/analytics/marketing', icon: 'fas fa-bullhorn', description: 'Performance de campanhas'
      menu.item :realtime, 'Tempo Real', '/analytics/realtime', icon: 'fas fa-clock', description: 'Dados em tempo real'
      menu.item :custom_reports, 'Relatórios Personalizados', '/analytics/custom', icon: 'fas fa-cogs', description: 'Criar relatórios personalizados'
      menu.item :funnels, 'Funis', '/analytics/funnels', icon: 'fas fa-filter', description: 'Análise de funis de conversão'
      menu.item :cohorts, 'Coortes', '/analytics/cohorts', icon: 'fas fa-users-class', description: 'Análise de coortes'
      menu.item :experiments, 'Experimentos', '/analytics/experiments', icon: 'fas fa-flask', description: 'Testes A/B e experimentos'
      menu.item :dashboards, 'Dashboards', '/analytics/dashboards', icon: 'fas fa-chart-area', description: 'Criar e gerenciar dashboards'
      menu.item :integrations, 'Integrações', '/analytics/integrations', icon: 'fas fa-puzzle-piece', description: 'Integrar com outras ferramentas de analytics'
      menu.item :settings, 'Configurações', '/analytics/settings', icon: 'fas fa-cog', description: 'Ajustes de analytics'
    end

    menu.item :settings, 'Configurações', '#', icon: 'fas fa-cog', description: 'Ajustes gerais do sistema' do
      menu.item :general, 'Geral', '/settings/general', icon: 'fas fa-cogs', description: 'Configurações gerais do sistema'
      menu.item :security, 'Segurança', '/settings/security', icon: 'fas fa-shield-alt', description: 'Configurações de segurança'
      menu.item :integrations, 'Integrações', '/settings/integrations', icon: 'fas fa-puzzle-piece', description: 'Gerenciar integrações'
      menu.item :notifications, 'Notificações', '/settings/notifications', icon: 'fas fa-bell', description: 'Configurar notificações'
      menu.item :billing, 'Faturamento', '/settings/billing', icon: 'fas fa-file-invoice-dollar', description: 'Gerenciar faturamento'
      menu.item :api_keys, 'Chaves API', '/settings/api_keys', icon: 'fas fa-key', description: 'Gerenciar chaves de API'
      menu.item :localization, 'Localização', '/settings/localization', icon: 'fas fa-language', description: 'Configurações de idioma e região'
      menu.item :backup, 'Backup', '/settings/backup', icon: 'fas fa-database', description: 'Gerenciar backups do sistema'
      menu.item :logs, 'Logs', '/settings/logs', icon: 'fas fa-clipboard-list', description: 'Ver logs do sistema'
      menu.item :maintenance, 'Manutenção', '/settings/maintenance', icon: 'fas fa-tools', description: 'Modo de manutenção'
      menu.item :branding, 'Marca', '/settings/branding', icon: 'fas fa-paint-brush', description: 'Personalizar a marca'
      menu.item :legal, 'Legal', '/settings/legal', icon: 'fas fa-gavel', description: 'Termos de uso e políticas'
      menu.item :updates, 'Atualizações', '/settings/updates', icon: 'fas fa-sync-alt', description: 'Verificar atualizações do sistema'
      menu.item :support, 'Suporte', '/settings/support', icon: 'fas fa-headset', description: 'Informações de suporte'
      menu.item :about, 'Sobre', '/settings/about', icon: 'fas fa-info-circle', description: 'Informações sobre o sistema'
    end

    menu.item :help, 'Ajuda', '#', icon: 'fas fa-question-circle', description: 'Central de ajuda' do
      menu.item :documentation, 'Documentação', '/help/docs', icon: 'fas fa-book', description: 'Acessar documentação'
      menu.item :faq, 'FAQ', '/help/faq', icon: 'fas fa-question', description: 'Perguntas frequentes'
      menu.item :contact, 'Contato', '/help/contact', icon: 'fas fa-envelope', description: 'Entrar em contato'
    end
  end
end
```

### 4. Integre os Helpers e Assets no Layout

No seu arquivo de layout principal (`app/views/layouts/application.html.erb`), adicione os helpers da gem e os links para os assets. Certifique-se de que o Font Awesome esteja incluído para os ícones.

```erb
<!DOCTYPE html>
<html>
  <head>
    <title>DemoApp</title>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <%= csrf_meta_tags %>
    <%= csp_meta_tag %>

    <%= stylesheet_link_tag "application", "data-turbo-track": "reload" %>
    <%= stylesheet_link_tag "super_navigation", "data-turbo-track": "reload" %>
    
    <!-- Font Awesome para os ícones -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <%= javascript_importmap_tags %>
  </head>

  <body>
    <header style="background-color: #007bff; color: white; padding: 1rem; display: flex; justify-content: space-between; align-items: center;">
      <h1 style="margin: 0;">Demo App - SuperNavigation</h1>
      <%= super_navigation_button %>
    </header>

    <main style="max-width: 1200px; margin: 2rem auto; padding: 0 1rem;">
      <%= yield %>
    </main>

    <%= javascript_include_tag "super_navigation", "data-turbo-track": "reload" %>
    <%= super_navigation_javascript_tag %>
  </body>
</html>
```

Adicione também as seguintes linhas ao seu `app/assets/config/manifest.js` para que o Rails possa encontrar os assets da gem:

```javascript
//= link_tree ../images
//= link_directory ../stylesheets .css
//= link super_navigation.css
//= link super_navigation.js
```

E no `config/initializers/assets.rb` adicione:

```ruby
Rails.application.config.assets.paths << Rails.root.join("..". "super_navigation", "vendor", "assets", "stylesheets")
Rails.application.config.assets.paths << Rails.root.join("..". "super_navigation", "vendor", "assets", "javascripts")
```

### 5. Crie um Controller e View de Exemplo

Para ter uma página inicial para testar o menu, gere um controller `Home`:

```bash
rails generate controller Home index
```

Defina a rota raiz em `config/routes.rb`:

```ruby
Rails.application.routes.draw do
  get 'home/index'
  root "home#index"
end
```

E atualize o conteúdo de `app/views/home/index.html.erb` com o conteúdo de demonstração que foi gerado anteriormente (o arquivo está anexado).

### 6. Inicie o Servidor Rails

```bash
rails server -b 0.0.0.0 -p 3000
```

Abra seu navegador e acesse `http://localhost:3000` (ou a porta que você configurou). Você verá o botão "Menu Principal" no cabeçalho e, ao clicar nele, o menu de duas colunas será exibido com todas as funcionalidades.

## Arquivos do Projeto de Demonstração

Os seguintes arquivos do projeto `demo_app` são relevantes para a demonstração:

*   `demo_app/Gemfile`
*   `demo_app/config/initializers/super_navigation.rb`
*   `demo_app/app/views/layouts/application.html.erb`
*   `demo_app/app/assets/config/manifest.js`
*   `demo_app/config/initializers/assets.rb`
*   `demo_app/config/routes.rb`
*   `demo_app/app/views/home/index.html.erb`

## Arquivos da Gem `super_navigation`

Os arquivos da gem `super_navigation` estão no arquivo `super_navigation.tar.gz` que foi fornecido anteriormente, e incluem:

*   `super_navigation/lib/super_navigation.rb`
*   `super_navigation/lib/super_navigation/configuration.rb`
*   `super_navigation/lib/super_navigation/item.rb`
*   `super_navigation/lib/super_navigation/item_container.rb`
*   `super_navigation/lib/super_navigation/helpers.rb`
*   `super_navigation/lib/super_navigation/railtie.rb`
*   `super_navigation/vendor/assets/stylesheets/super_navigation.css`
*   `super_navigation/vendor/assets/javascripts/super_navigation.js`
*   `super_navigation/README.md` (documentação da gem)
*   `super_navigation/super_navigation.gemspec`

Espero que esta demonstração seja útil!
