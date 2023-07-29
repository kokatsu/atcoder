import std;

void main() {
    string S;
    readf("%s\n", S);

    string[] list = ["ACE", "BDF", "CEG", "DFA", "EGB", "FAC", "GBD"];

    writeln(list.canFind(S) ? "Yes" : "No");
}