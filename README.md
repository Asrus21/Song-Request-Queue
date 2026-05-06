# 🎵 Song Request Queue - Twitch + YouTube

![Version](https://img.shields.io/badge/version-1.0.0-blue)
![License](https://img.shields.io/badge/license-MIT-green)
![Twitch](https://img.shields.io/badge/Twitch-IRC-purple)
![YouTube](https://img.shields.io/badge/YouTube-API-red)

> **Gerencie pedidos de músicas na sua live da Twitch com integração direta ao YouTube**

[![Song Request Queue Preview](https://via.placeholder.com/800x400/0a0a0f/9147ff?text=Clique+para+Abrir+o+App)](https://asrus21.github.io/Song-Request-Queue/)

## ✨ Funcionalidades

- 🔍 **Busca integrada ao YouTube** - Pesquise qualquer música/vídeo diretamente
- ⭐ **Sistema de favoritos** - Salve suas músicas mais pedidas
- 📋 **Fila de pedidos** - Adicione múltiplas vezes a mesma música
- 🎮 **Conexão direta com Twitch IRC** - Envia comandos `!sr` automaticamente
- ⏱️ **Limite de rate respeitado** - 6 segundos entre cada comando
- 💾 **Persistência local** - Favoritos salvos no seu navegador
- 🎨 **Design moderno** - Interface dark mode com efeitos neon

## 🚀 Acesse agora

**👉 [Clique aqui para abrir o Song Request Queue](https://asrus21.github.io/Song-Request-Queue/) 👈**

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
