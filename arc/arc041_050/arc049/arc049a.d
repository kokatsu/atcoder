import std;

void main() {
    dchar[] S;
    readfln("%s", S);

    size_t[] A = readln.chomp.split.to!(size_t[]);

    dchar[] res = S.dup;
    foreach (i, a; A) {
        res.insertInPlace(i + a, '"');
    }

    res.writeln;
}
