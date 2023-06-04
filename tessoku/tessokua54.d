import std;

void main() {
    int[string] grades;

    int Q;
    readf("%d\n", Q);

    foreach (_; 0 .. Q) {
        auto query = readln.chomp.split;

        auto op = query[0].to!int;
        if (op == 1) {
            grades[query[1]] = query[2].to!int;
        }
        else {
            grades[query[1]].writeln;
        }
    }
}