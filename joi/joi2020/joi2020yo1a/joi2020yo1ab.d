import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    auto vowels = assocArray("aiueo", true.repeat);

    auto res = S.count!(s => s in vowels);
    res.writeln;
}
