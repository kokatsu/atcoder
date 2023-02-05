import std;

void main() {
    int N;
    readf("%d\n", N);

    int[string] list;
    foreach (_; 0 .. N) {
        string S;
        readf("%s\n", S);

        ++list[S];
    }

    auto res = list.byPair.maxElement!(p => p.value).key;
    res.writeln;
}