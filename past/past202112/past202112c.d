import std;

void main() {
    int N;
    readf("%d\n", N);

    auto res = new int[](6);

    foreach (i; 0 .. N) {
        dchar P;
        string V;
        readf("%c %s\n", P, V);

        if (V == "AC" && res[P - 'A'] == 0) {
            res[P - 'A'] = i + 1;
        }
    }

    writefln("%(%s\n%)", res);
}
