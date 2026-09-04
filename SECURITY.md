# Política de Segurança

## Relatando Vulnerabilidades

Se você descobrir uma vulnerabilidade de segurança, **não abra uma issue pública**. Em vez disso, envie um relatório privado para: **[caiocaladaraujo.dev@gmail.com](mailto:caiocaladaraujo.dev@gmail.com)** com o título "[SEGURANÇA-DART-LAB]".

Por favor, inclua:

- Descrição clara da vulnerabilidade
- Passos para reproduzir
- Possível impacto
- Sugestões de correção (se houver)

Você receberá uma resposta em até 48 horas.

## Versões Suportadas

| Versão  | Status             | Suporte Até   |
|---------|--------------------|---------------|
| Atual   | Em desenvolvimento | TBD           |

## Melhores Práticas de Segurança

- Mantenha o Dart SDK e dependências atualizados
- Use `dart pub audit` para verificar vulnerabilidades
- Evite versões "any" no pubspec.yaml
- Revise as permissões das dependências

## Divulgação Coordenada

Após a correção, divulgaremos a vulnerabilidade seguindo a prática padrão de 90 dias.

## Segurança das Dependências

Execute regularmente:

```bash
dart pub outdated
dart pub audit
```
