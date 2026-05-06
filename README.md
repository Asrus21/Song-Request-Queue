# 🎵 Song Request Queue - Twitch + YouTube

<div align="center">
  <img src="assets/SR Logo.png" alt="Song Request Logo" width="120" height="120">
</div>

<br>

![Version](https://img.shields.io/badge/version-1.0.0-blue)
![License](https://img.shields.io/badge/license-MIT-green)
![Twitch](https://img.shields.io/badge/Twitch-IRC-purple)
![YouTube](https://img.shields.io/badge/YouTube-API-red)

> **Gerencie pedidos de músicas na sua live da Twitch com integração direta ao YouTube**

<div align="center">
  <a href="https://asrus21.github.io/Song-Request-Queue/">
    <img src="https://via.placeholder.com/800x400/0a0a0f/9147ff?text=Clique+para+Abrir+o+App" alt="Song Request Queue Preview">
  </a>
</div>

<br>

## 🚀 Acesse agora

**👉 [Clique aqui para abrir o Song Request Queue](https://asrus21.github.io/Song-Request-Queue/) 👈**

## ✨ Funcionalidades

- 🔍 **Busca integrada ao YouTube** - Pesquise qualquer música/vídeo diretamente
- ⭐ **Sistema de favoritos** - Salve suas músicas mais pedidas
- 📋 **Fila de pedidos** - Adicione múltiplas vezes a mesma música
- 🎮 **Conexão direta com Twitch IRC** - Envia comandos `!sr` automaticamente
- ⏱️ **Limite de rate respeitado** - 6 segundos entre cada comando
- 💾 **Persistência local** - Favoritos salvos no seu navegador
- 🎨 **Design moderno** - Interface dark mode com efeitos neon

## 🔧 Como usar

### 1. Obter as credenciais necessárias

#### 🔑 YouTube API Key
1. Acesse [Google Cloud Console](https://console.cloud.google.com/)
2. Crie um novo projeto ou selecione um existente
3. Habilite a **YouTube Data API v3**
4. Vá em "Credenciais" → "Criar credenciais" → "API Key"
5. Copie sua chave

#### 🎮 Twitch OAuth Token
1. Acesse [Twitch Token Generator](https://twitchtokengenerator.com/)
2. Clique em "Custom Scope"
3. Selecione apenas a permissão: `chat:read` e `chat:edit`
4. Autorize com sua conta Twitch
5. Copie o `access_token` gerado

### 2. Configurar a aplicação

1. Acesse [Song Request Queue](https://asrus21.github.io/Song-Request-Queue/)
2. Cole sua **YouTube API Key**
3. Cole seu **Twitch OAuth Token**
4. Digite o **nome do canal** onde os comandos serão enviados
5. Clique em "CONECTAR" no painel da Twitch

### 3. Usar a aplicação

- 🔍 **Pesquise músicas** no YouTube
- ⭐ **Adicione aos favoritos** clicando na estrela
- ➕ **Clique no card** para adicionar à fila (múltiplas vezes)
- 📡 **Clique em "ENVIAR TODOS"** para enviar os comandos `!sr` no chat
- ❌ **Remova itens individualmente** com o botão X

## 📦 Deploy

Este projeto está hospedado no GitHub Pages:  
**https://asrus21.github.io/Song-Request-Queue/**

## 🛠️ Tecnologias utilizadas

- **HTML5** - Estrutura da página
- **CSS3** - Estilização com variáveis CSS e animações
- **JavaScript (ES6+)** - Lógica da aplicação
- **Twitch IRC WebSocket** - Conexão direta com chat da Twitch
- **YouTube Data API v3** - Busca de vídeos
- **LocalStorage** - Persistência de favoritos

## 📋 Estrutura do projeto
Song-Request-Queue/
├── assets/
│ └── SR Logo.png # Logo do projeto
├── index.html # Aplicação principal
├── README.md # Documentação
└── LICENSE # Licença MIT

text

## ⚠️ Avisos importantes

### Segurança da API Key
- Sua **YouTube API Key** fica visível no frontend
- **Recomendação:** Restrinja a chave no Google Cloud Console para seu domínio específico

### Twitch Token
- O token **NUNCA deve ser compartilhado**
- Funciona como senha da sua conta Twitch
- Expira periodicamente - gere um novo quando necessário

### Limitações da Twitch
- Comandos respeitam o rate limit (6 segundos entre cada)
- O bot do canal precisa permitir comandos `!sr`

## 🐛 Solução de problemas

### "Erro de conexão com Twitch"
- Verifique se o token está correto
- Confirme se o nome do canal está correto (sem o #)
- O token pode ter expirado - gere um novo

### "Erro na API do YouTube"
- Verifique se a API Key está correta
- Confirme se a YouTube Data API v3 está ativada

## 🙏 Agradecimentos

- [Twitch IRC Docs](https://dev.twitch.tv/docs/irc)
- [YouTube Data API](https://developers.google.com/youtube/v3)
- [Google Fonts](https://fonts.google.com/) - Fontes Space Mono e Unbounded

## 📄 Licença

Distribuído sob a licença MIT.

---

## ⚡ Acesso rápido

**👉 https://asrus21.github.io/Song-Request-Queue/ 👈**
