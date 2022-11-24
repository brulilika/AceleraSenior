exports.nomes = ['Jose Carlos', 'Daniela', 'Marcos', 'Bernardo', 'Ana Paula', 'Cassio Lima'];

exports.empresa = {
    razaoSocial: 'Atos Technologies',
    endereco: {
        logradouro: 'Avenida Teodoro Victorelli',
        numero: 150,
        cidade: 'Londrina'
    },
    funcionarios: this.nomes
};

exports.cursos = [
    { descricao: 'Psicologia',          ch: 4800, periodo: 'MANHÃ',     status: true },
    { descricao: 'Análise de Sistemas', ch: 2800, periodo: 'NOITE',     status: true },
    { descricao: 'Turismo',             ch: 3200, periodo: 'INTEGRAL',  status: false }
];