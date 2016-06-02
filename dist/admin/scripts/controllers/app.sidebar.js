(function () {
    'use strict';

    angular.module('app.sidebar', [])
            .controller('AppsidebarCtrl', ['$scope', '$rootScope', function ($scope, $rootScope) {

                    $scope.composeEmail = function () {
                        $rootScope.$broadcast('composeEmail', {});
                    };

                }]);
})();
