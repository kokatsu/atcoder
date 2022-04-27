import std;

void main() {
    int N;
    readf("%d\n", N);

    auto S = readln.chomp.to!(dchar[]);

    int L = 26;

    auto rbts = new RedBlackTree!int[](L);
    foreach (i; 0 .. L) rbts[i] = redBlackTree!int;

    foreach (i, s; S) {
        rbts[s-'a'].insert(i.to!int);
    }

    int Q;
    readf("%d\n", Q);

    foreach (_; 0 .. Q) {
        auto input = readln.chomp.split;
        auto type = input[0].to!int;

        if (type == 1) {
            auto i = input[1].to!int - 1;
            auto c = input[2].to!dchar;

            rbts[S[i]-'a'].removeKey(i);
            rbts[c-'a'].insert(i);
            S[i] = c;
        }
        else {
            auto l = input[1].to!int - 1;
            auto r = input[2].to!int - 1;

            int res;
            foreach (i; 0 .. L) {
                auto ub = rbts[i].upperBound(l-1);
                if (!ub.empty && ub.front <= r) ++res;
            }

            res.writeln;
        }
    }
}