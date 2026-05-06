# 🎵 Song Request Queue - Twitch + YouTube

<div align="center">
  <a href="https://asrus21.github.io/Song-Request-Queue/">
    <img src="assets/sr-logo.png" alt="Song Request Logo" width="150">
    <br>
    <strong style="font-size: 20px;">Clique na logo para abrir o aplicativo</strong>
  </a>
</div>

<br>

![Version](https://img.shields.io/badge/version-1.0.0-blue)
![License](https://img.shields.io/badge/license-MIT-green)
![Twitch](https://img.shields.io/badge/Twitch-IRC-purple)
![YouTube](https://img.shields.io/badge/YouTube-API-red)

> **Gerencie pedidos de músicas na sua live da Twitch com integração direta ao YouTube**

---

## 🚀 Acesso Rápido

<div align="center">
  <table>
    <tr>
      <td align="center">
        <a href="https://asrus21.github.io/Song-Request-Queue/">
          <img src="assets/sr-logo.png" width="40" alt="Logo">
          <br>
          <strong>🎵 Song Request Queue</strong>
        </a>
      </td>
      <td align="center">
        <a href="https://github.com/asrus21/Song-Request-Queue">
          <img src="https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png" width="40" alt="GitHub">
          <br>
          <strong>📦 Código Fonte</strong>
        </a>
      </td>
    </tr>
  </table>
</div>

**🔗 Link direto:** https://asrus21.github.io/Song-Request-Queue/

---

## ✨ Funcionalidades

| Funcionalidade | Descrição |
|----------------|-----------|
| 🔍 **Busca YouTube** | Pesquise qualquer música ou vídeo diretamente |
| ⭐ **Sistema de favoritos** | Salve suas músicas mais pedidas |
| 📋 **Fila de pedidos** | Adicione múltiplas vezes a mesma música |
| 🎮 **Conexão Twitch IRC** | Envia comandos `!sr` automaticamente no chat |
| ⏱️ **Rate limit respeitado** | 6 segundos entre cada comando |
| 💾 **Persistência local** | Favoritos salvos no navegador |
| 🎨 **Design moderno** | Interface dark mode com efeitos neon |

---

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
3. Selecione: `chat:read` e `chat:edit`
4. Autorize com sua conta Twitch
5. Copie o `access_token` gerado

### 2. Configurar a aplicação

1. **Acesse o app:** https://asrus21.github.io/Song-Request-Queue/
2. Cole sua **YouTube API Key**
3. Cole seu **Twitch OAuth Token**
4. Digite o **nome do canal** onde os comandos serão enviados
5. Clique em "CONECTAR" no painel da Twitch

### 3. Usar a aplicação

| Ação | Como fazer |
|------|------------|
| 🔍 Pesquisar | Digite o nome da música e clique em BUSCAR |
| ⭐ Favoritar | Clique na estrela no canto do vídeo |
| ➕ Adicionar à fila | Clique no card do vídeo (múltiplas vezes) |
| 📡 Enviar comandos | Clique em "ENVIAR TODOS" |
| ❌ Remover item | Clique no X ao lado do item na fila |

---

## 📦 Estrutura do projeto
Song-Request-Queue/
├── assets/
│ └── sr-logo.png # Logo do projeto
├── index.html # Aplicação principal
├── README.md # Documentação
└── LICENSE # Licença MIT

text

---

## 🛠️ Tecnologias utilizadas

- **HTML5** - Estrutura da página
- **CSS3** - Estilização com variáveis CSS e animações
- **JavaScript (ES6+)** - Lógica da aplicação
- **Twitch IRC WebSocket** - Conexão direta com chat da Twitch
- **YouTube Data API v3** - Busca de vídeos
- **LocalStorage** - Persistência de favoritos

---

## ⚠️ Avisos importantes

### Segurança
- Sua **YouTube API Key** fica visível no frontend
- O **Twitch Token** NUNCA deve ser compartilhado
- Recomenda-se restringir a API Key ao domínio do GitHub Pages

### Limitações da Twitch
- Comandos respeitam o rate limit (6 segundos entre cada)
- O bot do canal precisa permitir comandos `!sr`
- Funciona apenas para canais onde você tem permissão

---

## 🐛 Solução de problemas

| Problema | Solução |
|----------|---------|
| Erro de conexão Twitch | Verifique token e nome do canal |
| Token expirado | Gere um novo no Twitch Token Generator |
| Erro na API do YouTube | Confirme se a API Key está correta e ativada |
| Rate limit | O sistema já aguarda 6 segundos entre comandos |

---

## 📄 Licença

Distribuído sob a licença MIT. Veja o arquivo `LICENSE` para mais informações.

---

## 🙏 Agradecimentos

- [Twitch IRC Docs](https://dev.twitch.tv/docs/irc)
- [YouTube Data API](https://developers.google.com/youtube/v3)
- [Google Fonts](https://fonts.google.com/) - Fontes Space Mono e Unbounded
- [Twitch Token Generator](https://twitchtokengenerator.com/)

---

<div align="center">
  <a href="https://asrus21.github.io/Song-Request-Queue/">
    <img src="assets/sr-logo.png" alt="Logo" width="80">
    <br>
    <strong>🎯 Clique aqui para acessar o Song Request Queue 🎯</strong>
  </a>
  <br><br>
  <a href="https://asrus21.github.io/Song-Request-Queue/">
    🔗 https://asrus21.github.io/Song-Request-Queue/
  </a>
</div>

---

<div align="center">
  <sub>Desenvolvido com 💜 para streamers e comunidades musicais da Twitch</sub>
</div>

---
