import std;

void main() {
    int Q;
    readf("%d\n", Q);

    DList!(Tuple!(dchar, long)) S;
    foreach (_; 0 .. Q) {
        auto input = readln.chomp.split;
        int T = input[0].to!int;
        if (T == 1) {
            dchar C = input[1].to!dchar;
            long X = input[2].to!long;

            S.insertBack(tuple(C, X));
        }
        else {
            long D = input[1].to!long;

            auto cnts = new long[](26);
            while (D > 0 && !S.empty) {
                if (D >= S.front[1]) {
                    cnts[S.front[0]-'a'] += S.front[1];
                    D -= S.front[1];
                    S.removeFront;
                }
                else {
                    cnts[S.front[0]-'a'] += D;
                    S.front[1] -= D;
                    D = 0;
                }
            }

            long num = cnts.map!(x => x ^^ 2).sum;
            num.writeln;
        }
    }
}