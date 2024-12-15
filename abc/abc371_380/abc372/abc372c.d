import std;

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    auto S = readln.chomp.to!(dchar[]);

    auto res = S.count("ABC");
    foreach (_; 0 .. Q) {
        int X;
        dchar C;
        readf("%d %c\n", X, C);

        --X;

        if (S[X] == 'A' && X < N - 2 && S[X .. X + 3] == "ABC") {
            --res;
        }
        else if (S[X] == 'B' && X > 0 && X < N - 1 && S[X - 1 .. X + 2] == "ABC") {
            --res;
        }
        else if (S[X] == 'C' && X > 1 && S[X - 2 .. X + 1] == "ABC") {
            --res;
        }

        S[X] = C;

        if (S[X] == 'A' && X < N - 2 && S[X .. X + 3] == "ABC") {
            ++res;
        }
        else if (S[X] == 'B' && X > 0 && X < N - 1 && S[X - 1 .. X + 2] == "ABC") {
            ++res;
        }
        else if (S[X] == 'C' && X > 1 && S[X - 2 .. X + 1] == "ABC") {
            ++res;
        }

        res.writeln;
    }
}
