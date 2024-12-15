import std;

void main() {
    long Q, L;
    readf("%d %d\n", Q, L);

    long S;
    long[] counts, elements;
    foreach (_; 0 .. Q) {
        auto query = readln.chomp.split;

        if (query[0] == "Push") {
            long N = query[1].to!long, M = query[2].to!long;
            if (S > L - N) {
                writeln("FULL");
                return;
            }
            S += N;
            counts ~= N, elements ~= M;
        }
        else if (query[0] == "Pop") {
            long N = query[1].to!long;
            if (S < N) {
                writeln("EMPTY");
                return;
            }
            while (!counts.empty) {
                if (N >= counts.back) {
                    S -= counts.back;
                    N -= counts.back;
                    counts.popBack, elements.popBack;
                }
                else {
                    S -= N;
                    counts.back -= N;
                    break;
                }
            }
        }
        else if (query[0] == "Top") {
            if (S == 0) {
                writeln("EMPTY");
                return;
            }
            elements.back.writeln;
        }
        else {
            S.writeln;
        }
    }

    writeln("SAFE");
}
