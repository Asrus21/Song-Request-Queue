# 🎵 Song Request Queue - Twitch + YouTube + Spotify

<div align="center">
  <a href="https://www.asrus.app/song-request-queue/">
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
        <a href="https://www.asrus.app/song-request-queue/">
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

**🔗 Link direto:** https://www.asrus.app/song-request-queue/

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
| 📋 **Playlists** |	Crie e gerencie playlists personalizadas salvas na sua conta Twitch. |

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

Acesse [https://www.asrus.app/song-request-queue/](https://www.asrus.app/song-request-queue/)

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

```
Browser (Vercel — www.asrus.app/song-request-queue/)
    ↓ OAuth popup
API Serverless (Vercel Functions — /api/* neste mesmo repositório)
    ↓ queries
PostgreSQL (Neon)
    ↓ proxy
YouTube Data API v3 + Spotify Web API
    ↓ chat messages (Helix) + IRC anônimo (detecção de cooldown)
Twitch
```

Frontend e backend vivem **no mesmo repositório e no mesmo projeto Vercel**:

```
Song-Request-Queue/
├── index.html        # SPA completa (busca, fila, favoritos, playlists, voz)
├── callback.html     # OAuth callback
├── api/
│   └── index.js      # Backend Express rodando como Vercel Function
├── db/
│   └── init.sql      # Schema PostgreSQL (Neon) — idempotente
├── vercel.json       # rewrites (/api/* → function) + maxDuration
└── package.json      # dependências do backend
```

---

## 🚀 Deploy (Vercel + Neon)

### 1. Banco de dados (Neon)

1. No painel da Vercel, adicione a integração **Neon** (Storage → Create Database → Neon) ao projeto, ou crie o banco direto em [neon.tech](https://neon.tech).
2. A integração define `DATABASE_URL` automaticamente. Se criou manualmente, adicione `DATABASE_URL` nas Environment Variables do projeto na Vercel.
3. Crie as tabelas de **uma** destas formas:
   - Acesse `https://song-request-queue.vercel.app/api/setup` uma vez após o deploy (idempotente); ou
   - Cole o conteúdo de `db/init.sql` no SQL Editor da Neon.

### 2. Variáveis de ambiente (Vercel → Settings → Environment Variables)

| Variável | Valor |
|----------|-------|
| `DATABASE_URL` | connection string da Neon (definida pela integração) |
| `TWITCH_CLIENT_ID` | Client ID do app na Twitch |
| `TWITCH_CLIENT_SECRET` | Client Secret do app na Twitch |
| `TWITCH_REDIRECT_URI` | `https://song-request-queue.vercel.app/api/auth/twitch/callback` |
| `YOUTUBE_API_KEY` | chave da YouTube Data API v3 |
| `SPOTIFY_CLIENT_ID` | Client ID do app no Spotify |
| `SPOTIFY_CLIENT_SECRET` | Client Secret do app no Spotify |
| `FRONTEND_URL` | `https://www.asrus.app/song-request-queue/callback.html` |

### 3. Twitch Developer Console

Em **OAuth Redirect URLs**, cadastre:

```
https://song-request-queue.vercel.app/api/auth/twitch/callback
```

Scopes usados: `user:read:email user:write:chat`

---

## 🛠️ Tecnologias utilizadas

- **HTML5** - Estrutura da página
- **CSS3** - Estilização com variáveis CSS e animações
- **JavaScript (ES6+)** - Lógica da aplicação
- **Twitch OAuth** - Autenticação segura
- **Twitch Helix API** - Envio de mensagens no chat
- **YouTube Data API v3** - Busca de vídeos
- **Spotify Web API** - Busca de músicas
- **Node.js + Express** - Backend (Vercel Functions, neste repositório em `api/`)
- **PostgreSQL (Neon)** - Banco de dados para favoritos, sessões e playlists
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
- [Vercel](https://vercel.com/) - Hospedagem do frontend e da API serverless
- [Neon](https://neon.tech/) - PostgreSQL serverless
- [Google Fonts](https://fonts.google.com/) - Fontes Space Mono e Unbounded

---

<div align="center">
  <a href="https://www.asrus.app/song-request-queue/">
    <img src="assets/sr-logo.png" alt="Logo" width="80">
    <br>
    <strong>🎯 Clique aqui para acessar o Song Request Queue 🎯</strong>
  </a>
  <br><br>
  <a href="https://www.asrus.app/song-request-queue/">
    🔗 https://www.asrus.app/song-request-queue/
  </a>
</div>

---

<div align="center">
  <sub>Desenvolvido com 💜 para streamers e comunidades musicais da Twitch</sub>
</div>
