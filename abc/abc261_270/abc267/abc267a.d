import std;

void main() {
    string S;
    readf("%s\n", S);

    string[] list = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"];

    int res = 5;
    foreach (i, l ; list) {
        if (l == S) res -= i;
    }

    res.writeln;
}