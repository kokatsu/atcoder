import std;

void main() {
    int N;
    readf("%d\n", N);

    bool[string] registered;

    foreach (i; 1 .. N + 1) {
        string S = readln.chomp;

        if (S in registered) {
            continue;
        }

        registered[S] = true;
        i.writeln;
    }
}
