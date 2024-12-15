import std;

void main() {
    int N;
    readf("%d\n", N);

    string[] list = ["AC", "WA", "TLE", "RE"];

    int[string] cnts;
    foreach (l; list)
        cnts[l] = 0;

    foreach (_; 0 .. N) {
        string S;
        readf("%s\n", S);

        ++cnts[S];
    }

    foreach (l; list)
        writeln(l, " x ", cnts[l]);
}
