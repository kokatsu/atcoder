import std;

const int L = 10 ^^ 5 + 1;

void main() {
    int Q;
    readf("%d\n", Q);

    int p = -1;
    auto books = new string[](L);
    foreach (_; 0 .. Q) {
        auto query = readln.chomp.split;

        auto q = query[0].to!int;
        if (q == 1) {
            books[++p] = query[1];
        }
        else if (q == 2) {
            books[p].writeln;
        }
        else {
            --p;
        }
    }
}