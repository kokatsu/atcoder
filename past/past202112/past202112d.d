import std;

struct Student {
    int id, math, english;

    int opCmp(const Student that) const {
        int a = this.math + this.english;
        int b = that.math + that.english;
        if (a == b) {
            if (this.math == that.math) {
                return that.id - this.id;
            }
            else {
                return this.math - that.math;
            }
        }
        else {
            return a - b;
        }
    }

    string toString() const @safe pure nothrow {
        return this.id.to!string;
    }
}

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);
    auto B = readln.chomp.split.to!(int[]);

    auto students = new Student[](N);
    foreach (i; 0 .. N) {
        students[i] = Student(i + 1, A[i], B[i]);
    }

    students.sort!"a > b";

    writefln("%(%s %)", students);
}
