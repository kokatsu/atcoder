import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    int[string] dict;
    foreach (_; 0 .. N) {
        string S;
        readf("%s\n", S);

        ++dict[S];
    }

    int[] counts = dict.values();
    counts.sort!"a > b";

    int C = counts[K-1];

    string[] words = dict.byPair.filter!(x => x.value == C).map!(x => x.key).array;

    string res = words.length == 1 ? words[0] : "AMBIGUOUS";
    res.writeln;
}