import std;

void main() {
    auto S = readln.chomp.to!(dchar[]);

    int Q;
    readf("%d\n", Q);

    bool isRev;
    dchar[] L, R;
    foreach (_; 0 .. Q) {
        auto query = readln.chomp.split;

        if (query[0] == "1") {
            isRev = !isRev;
        }
        else {
            (isRev == (query[1] == "2") ? L : R) ~= query[2].to!dchar;
        }
    }

    dchar[] res;
    if (isRev) {
        R.reverse, S.reverse;
        res = R ~ S ~ L;
    }
    else {
        L.reverse;
        res = L ~ S ~ R;
    }

    res.writeln;
}