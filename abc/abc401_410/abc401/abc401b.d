import std;

void main() {
    int N;
    readf("%d\n", N);

    int res;
    bool login;
    foreach (i; 0 .. N) {
        string S;
        readf("%s\n", S);

        if (S == "login") {
            login = true;
        }
        else if (S == "logout") {
            login = false;
        }
        else if (S == "private" && !login) {
            ++res;
        }
    }

    res.writeln;
}
