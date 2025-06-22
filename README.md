# 🎱 Bingo Driven

Poucos jogos são tão tradicionais e divertidos como o bom e velho bingo.

Neste jogo, o objetivo é gritar **"BINGO!"** assim que todos os números da sua cartela forem sorteados. A cartela é composta por números aleatórios ordenados. Quando alguém alega ter preenchido toda a cartela, realiza-se uma verificação para confirmar se todos os números foram realmente chamados.

Esse sistema facilita todo o processo: você cria novos jogos, sorteia números e salva tudo no banco de dados. Além disso, o projeto já vem com testes, arquitetura organizada e pronto para ser publicado em produção.

---

## ✅ Tecnologias Utilizadas

- Node.js
- Express
- TypeScript
- PostgreSQL (via Prisma ORM)
- Jest + SuperTest (testes de integração)
- Docker e Docker Compose
- GitHub Actions (CI/CD)
- Render (deploy do back-end)
- Vercel (deploy do front-end)

---

## 🚀 Como rodar o projeto com Docker Compose

1. Clone o repositório do back-end:

```bash
git clone https://github.com/seu-usuario/bingo-driven-backend.git
cd bingo-driven-backend
```

2. Crie o arquivo `.env` na raiz e adicione:

```
DATABASE_URL=postgres://postgres:dbzinhas2@db:5432/bingo
```

3. Rode o docker compose:

```bash
docker-compose up --build
```

A API estará rodando em: [http://localhost:5000](http://localhost:5000)

---

## 🐘 Como rodar as migrations (ambiente local Docker)

Com os containers já rodando, execute o seguinte comando:

```bash
docker exec -it bingo-api npx prisma migrate deploy
```

---

## 📦 Scripts úteis

| Comando                         | Descrição                         |
|-------------------------------|----------------------------------|
| `npm run dev`                 | Executa a aplicação em dev       |
| `npm run build`               | Compila os arquivos TS para JS   |
| `npm start`                   | Inicia o projeto compilado       |
| `npx prisma studio`           | Interface gráfica para o banco   |
| `npx prisma migrate dev`      | Cria e aplica migração local     |
| `npm test`                    | Executa os testes automatizados  |

---

## 🌐 Link de produção (Render)

- API hospedada em: [https://bingo-driven-backend-1.onrender.com](https://bingo-driven-backend-1.onrender.com)
- Rota de saúde (verifica se está online): [https://bingo-driven-backend-1.onrender.com/health](https://bingo-driven-backend-1.onrender.com/health)

---

## 🛠️ Variáveis de ambiente (produção)

A variável de ambiente `DATABASE_URL` já está configurada no painel da Render com o valor da **Internal Database URL** do PostgreSQL.

---

## 🧪 Testes no CI

Os testes são executados automaticamente a cada push no GitHub. Commits com testes falhando são barrados no deploy.

---

## 📄 Licença

Este projeto é apenas para fins educacionais.

---