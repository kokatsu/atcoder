import std;

void main() {
    string S;
    readfln("%s", S);

    size_t L = S.length * 2 - 1;
    dchar[] res = new dchar[](L);
    foreach (i; 0 .. L) {
        res[i] = i % 2 == 0 ? S[i / 2] : 'o';
    }

    res.writeln;
}
