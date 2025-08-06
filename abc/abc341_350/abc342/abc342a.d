import std;

void main() {
    string S;
    readf("%s\n", S);

    long res = S.countUntil(lowercase.filter!(l => S.count(l) == 1).front) + 1;
    res.writeln;
}
