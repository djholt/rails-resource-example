(function () {
  angular.module('AddressBook').controller('PeopleController', ['$scope', 'Person', function ($scope, Person) {
    $scope.people = Person.query();
  }]);
})();
