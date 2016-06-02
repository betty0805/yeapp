module.exports = {
    development: {
        options: {
            compress: false
        },
        files: {
            '<%= config.app %>/css/app.css': 'src/less/app.less',
            '<%= config.landingpage %>/css/result.css': 'src/less/landingpage.less',
            '<%= config.support_template %>/css/result.css': 'src/less/support.less'
        }
    }
};