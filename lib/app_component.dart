import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_forms/angular_forms.dart';

import 'src/todo_list/todo_list_component.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
    selector: 'my-app',
    styleUrls: ['app_component.css'],
    templateUrl: 'app_component.html',
    directives: [
      TodoListComponent,
      formDirectives,
      materialInputDirectives,
      MaterialInputComponent,
      MaterialDropdownSelectComponent,
      DropdownSelectValueAccessor,
      popupBindings,
    ],
    providers: [popupBindings])
class AppComponent {
  // Nothing here yet. All logic is in TodoListComponent.

  Control ctrl = Control('', Validators.required);
  Control ctrl2 = Control('', Validators.required);

  List<String> options = ["Ken", "Robert", "Bob"];

  reset() {
    ctrl = Control('', Validators.required);
    ctrl2 = Control('', Validators.required);
  }

  String get errorMsg {
    if (ctrl.touched) {
      return "Required error message!";
    } else {
      return null;
    }
  }
}
