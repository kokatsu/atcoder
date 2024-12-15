import std;

void main() {
    string S;
    readf("%s\n", S);

    auto res = S.split('+').count!(x => !x.canFind('0'));
    res.writeln;
}
