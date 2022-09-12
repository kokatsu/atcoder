import std;

void main() {
    int N;
    readf("%d\n", N);

    bool[string] list;
    foreach (_; 0 .. N) {
        string S;
        readf("%s\n", S);

        list[S] = true;
    }

    auto res = list.length;
    res.writeln;
}