import std;

void main() {
    string S;
    readf("%s\n", S);

    auto list = iota(6).map!(i => S.count(uppercase[i])).array;

    string res = format("%(%d %)", list);
    res.writeln;
}
