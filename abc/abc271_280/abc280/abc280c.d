import std;

void main() {
    dchar[] S, T;
    readf("%s\n%s\n", S, T);

    S ~= '@';

    foreach (i, s, t; zip(iota(S.length), S, T)) {
        if (s != t) {
            writeln(i + 1);
            return;
        }
    }
}
