# 🎵 Song Request Queue - Twitch + YouTube + Spotify

<div align="center">
  <a href="https://asrus21.github.io/Song-Request-Queue/">
    <img src="assets/sr-logo.png" alt="Song Request Logo" width="150">
    <br>
    <strong style="font-size: 20px;">Clique na logo para abrir o aplicativo</strong>
  </a>
</div>

<br>

![Version](https://img.shields.io/badge/version-2.0.0-blue)
![License](https://img.shields.io/badge/license-MIT-green)
![Twitch](https://img.shields.io/badge/Twitch-OAuth-purple)
![YouTube](https://img.shields.io/badge/YouTube-API-red)
![Spotify](https://img.shields.io/badge/Spotify-API-brightgreen)

> **Gerencie pedidos de músicas na sua live da Twitch com integração ao YouTube e Spotify**

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

<div style="border: 2px solid #646cff; border-radius: 12px; padding: 16px;">

| Funcionalidade | Descrição |
|----------------|-----------|
| 🔐 **Login Twitch OAuth** | Autentique-se com sua conta Twitch de forma segura |
| 🔍 **Busca YouTube** | Pesquise músicas pelo nome, artista ou título do vídeo |
| 🎵 **Busca Spotify** | Pesquise faixas diretamente no catálogo do Spotify |
| ⭐ **Sistema de favoritos** | Salve suas músicas mais pedidas no banco de dados (limite de 50) |
| 📋 **Fila unificada** | Adicione músicas do YouTube e Spotify na mesma fila |
| ➕ **Múltiplos pedidos** | Adicione a mesma música várias vezes à fila |
| 🎮 **Envio pelo chat** | Envia comandos `!sr` automaticamente no chat da Twitch |
| ⏱️ **Intervalo configurável** | Ajuste o delay entre envios (1–10 segundos) |
| 📊 **Log em tempo real** | Acompanhe o status de cada envio (✓ aceito / ✗ falha) |
| 💾 **Sessão persistente** | Permanece logado enquanto a aba estiver aberta (expira em 7 dias) |
| 🎨 **Design moderno** | Interface dark mode com efeitos neon |

</div>

---

## ⚠️ Aviso sobre Spotify

Os pedidos do Spotify são enviados como link completo:
!sr https://open.spotify.com/track/ID

text

**Importante:** Alguns bots de SR (como o **Songify**) exigem que o usuário seja **VIP ou moderador** para enviar links no chat. Se você não tiver essa permissão, utilize apenas o YouTube.

Os pedidos do YouTube são enviados apenas com o ID:
!sr dQw4w9WgXcQ

text

---

## 🔧 Como usar

### 1. Acesse o aplicativo

Acesse [https://asrus21.github.io/Song-Request-Queue/](https://asrus21.github.io/Song-Request-Queue/)

### 2. Faça login com a Twitch

Clique no botão **"Login com Twitch"** e autorize o acesso do aplicativo.

> 🔒 **Segurança:** Sua senha nunca é acessada pelo app — utilizamos o OAuth oficial da Twitch.

### 3. Pesquise músicas

| Plataforma | Como pesquisar |
|------------|----------------|
| 🎵 **YouTube** | Digite o nome da música/artista e clique em BUSCAR |
| 🎧 **Spotify** | Digite o nome da faixa/artista e clique em BUSCAR |

### 4. Adicione à fila

- Clique no card do vídeo/música para adicionar à fila
- Clique na estrela ⭐ para favoritar (salvo na sua conta)
- Use a aba **"Favoritos"** para acessar rapidamente suas músicas salvas
- Botão **"Adicionar Tudo"** — coloca todos os favoritos na fila de uma vez

### 5. Envie para o chat

1. Digite o **nome do canal Twitch** (sem o @)
2. Clique em **"ENVIAR TODOS"**
3. Acompanhe o progresso e os logs de envio

---

## 📦 Arquitetura
Browser (GitHub Pages)
↓ OAuth popup
Backend (Railway — Node.js)
↓ queries
PostgreSQL (Railway)
↓ proxy
YouTube Data API v3 + Spotify Web API
↓ chat messages
Twitch Helix API

text

---

## 🛠️ Tecnologias utilizadas

- **HTML5** - Estrutura da página
- **CSS3** - Estilização com variáveis CSS e animações
- **JavaScript (ES6+)** - Lógica da aplicação
- **Twitch OAuth** - Autenticação segura
- **Twitch Helix API** - Envio de mensagens no chat
- **YouTube Data API v3** - Busca de vídeos
- **Spotify Web API** - Busca de músicas
- **Node.js + Express** - Backend (Railway)
- **PostgreSQL** - Banco de dados para favoritos
- **Session Storage** - Gerenciamento de sessão

---

## 🔒 Segurança

| Medida | Descrição |
|--------|-----------|
| **OAuth Twitch** | Senha nunca é acessada pelo app |
| **sessionStorage** | UUID armazenado por aba, inacessível por extensões |
| **postMessage com validação** | Rejeita mensagens de domínios desconhecidos |
| **Regex validation** | UUID validado antes de qualquer uso |
| **Expiração de sessão** | Sessões expiram automaticamente após 7 dias |
| **Backend isolado** | API keys nunca expostas no frontend |

---

## 🖥️ Versão Desktop

Prefere um app instalado? Veja o repositório da versão desktop construída com Electron:

👉 **[song-request-desktop](https://github.com/asrus21/song-request-desktop)**

---

## 🐛 Solução de problemas

| Problema | Solução |
|----------|---------|
| Não consigo fazer login | Verifique se você autorizou o app na Twitch |
| Spotify não envia | Seu bot pode exigir VIP/Mod para links — use YouTube |
| Favoritos não salvam | Verifique se está logado e se não excedeu o limite de 50 |
| Envio falha | Confirme o nome do canal e se o bot aceita `!sr` |
| Sessão expirou | Faça login novamente |

---

## 📄 Licença

Distribuído sob a licença MIT. Veja o arquivo `LICENSE` para mais informações.

---

## 🙏 Agradecimentos

- [Twitch OAuth & API](https://dev.twitch.tv/docs/api/)
- [YouTube Data API](https://developers.google.com/youtube/v3)
- [Spotify Web API](https://developer.spotify.com/)
- [Railway](https://railway.app/) - Hospedagem do backend
- [Google Fonts](https://fonts.google.com/) - Fontes Space Mono e Unbounded

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
