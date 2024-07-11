import std;

void main() {
    string S;
    readf("%s\n", S);

    auto T = S.chunks(4).map!(x => x.to!string).array;

    long P = T.countUntil("post");

    string res = P >= 0 ? (P+1).to!string : "none";
    res.writeln;
}