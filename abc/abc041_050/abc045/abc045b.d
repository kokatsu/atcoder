import std;

void main() {
    auto S = new dchar[][](3);
    foreach (i; 0 .. 3) S[i] = readln.chomp.to!(dchar[]);

    int pos;
    while (!S[pos].empty) {
        dchar f = S[pos].front;
        S[pos].popFront;

        pos = to!int(f-'a');
    }

    dchar res = 'A' + pos;
    res.writeln;
}