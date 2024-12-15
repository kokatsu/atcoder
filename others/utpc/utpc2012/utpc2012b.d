import std;

void main() {
    string S;
    readf("%s\n", S);

    auto used = new bool[](8);
    dchar[] res;
    foreach_reverse (s; S) {
        if (!used[s - 'A']) {
            res ~= s;
            used[s - 'A'] = true;
        }
    }

    foreach (i; 0 .. 8) {
        if (!used[i])
            res ~= 'A' + i;
    }

    res.reverse;

    res.writeln;
}
