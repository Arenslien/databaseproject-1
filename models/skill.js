const Sequelize = require('sequelize');

module.exports = class Skill extends Sequelize.Model {
    static init(sequelize) {
        return super.init({
            skill_name: {
                type: Sequelize.STRING(100),
                allowNull: false,
            },
        }, {
            sequelize,
            timestamps: false,
            underscored: false,
            modelName: 'Skill',
            tableName: 'departments',
            paranoid: false,
            charset: 'utf8',
            collate: 'utf8_general_ci',
        });
    }

    static associate(db) {
        db.Skill.hasMany(db.EmpSkill, { foreinKey: 'skillID', targetKey: 'id'});
    }
};
