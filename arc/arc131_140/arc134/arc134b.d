import std;

void main() {
    int N;
    readf("%d\n", N);

    auto s = readln.chomp.to!(dchar[]);

    int L = 26;
    auto rbts = new RedBlackTree!int[](L);
    foreach (i; 0 .. L)
        rbts[i] = redBlackTree!int;
    foreach (i, x; s) {
        rbts[x - 'a'].insert(i.to!int);
    }

    int b = N;
    foreach (i; 0 .. N) {
        if (i >= b)
            break;

        int d = s[i] - 'a';
        foreach (j; 0 .. d) {
            auto lb = rbts[j].lowerBound(b);
            if (lb.empty)
                continue;

            if (i >= lb.back)
                continue;
            b = lb.back;
            swap(s[i], s[b]);
            break;
        }
    }

    s.writeln;
}
