import std;

void main() {
    string S = readln.chomp;

    int cnt1;
    foreach (s; S) {
        if (s == 'a')
            ++cnt1;
        else
            break;
    }

    int cnt2;
    foreach_reverse (s; S) {
        if (s == 'a')
            ++cnt2;
        else
            break;
    }

    dchar[] F;
    if (cnt1 < cnt2) {
        foreach (i; 0 .. cnt2 - cnt1)
            F ~= 'a';
    }

    dchar[] T = F ~ S.dup.to!(dchar[]);

    dchar[] U = T.dup;
    U.reverse;

    writeln(T == U ? "Yes" : "No");
}
