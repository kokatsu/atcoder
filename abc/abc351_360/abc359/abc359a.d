import std;

void main() {
    int N;
    readf("%d\n", N);

    int res;
    foreach (_; 0 .. N) {
        string S;
        readf("%s\n", S);

        if (S == "Takahashi") ++res;
    }

    res.writeln;
}