# Linux IaC – User Management

Script de *Infrastructure as Code* (IaC) em Shell Script para automatizar a criação de usuários, grupos, diretórios e permissões em sistemas Linux.  
Ideal para padronizar ambientes corporativos, laboratórios de estudo, ambientes de homologação e testes de administração de sistemas.

---

## 📌 Funcionalidades

O script realiza automaticamente:

### 🔧 Estrutura de Diretórios
- `/publico`
- `/adm`
- `/ven`
- `/sec`

### 👥 Criação de Grupos
- `GRP_ADM`
- `GRP_VEN`
- `GRP_SEC`

### 🧑‍💼 Criação de Usuários

Os usuários são criados com:
- Shell `/bin/bash`
- Diretório home automático
- Inclusão no grupo correspondente
- Senha inicial padrão expirada para troca obrigatória no primeiro login

Usuários criados:

| Grupo | Usuários |
|-------|----------|
| **GRP_ADM** | carlos, maria, joao |
| **GRP_VEN** | debora, sebastiana, roberto |
| **GRP_SEC** | josefina, amanda, rogerio |

### 🔐 Permissões e Ownership

Permissões configuradas:

| Diretório | Dono/Grupo | Permissão |
|-----------|------------|-----------|
| `/publico` | root:root | **777** |
| `/adm` | root:GRP_ADM | **770** |
| `/ven` | root:GRP_VEN | **770** |
| `/sec` | root:GRP_SEC | **770** |

---

## 🚀 Como usar

### 1. Clone o repositório
```bash
git clone https://github.com/seu-usuario/linux-iac-user-management.git
cd linux-iac-user-management
````

### 2. Dê permissão de execução ao script

```bash
chmod +x iac.sh
```

### 3. Execute como root

```bash
sudo ./iac.sh
```

---

## ⚠️ Observações Importantes

* O script deve ser executado com privilégios de superusuário (`root` ou `sudo`).
* A senha padrão utilizada é `default`, expirada imediatamente para troca obrigatória.
* Este projeto é voltado para ambientes de **teste, homologação ou estudo** — não utilize senhas padrão em produção.
* Caso usuários ou grupos já existam, a distribuição pode exibir mensagens de aviso, o que é esperado.
