<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="scroll-smooth group" data-sidebar="brand" dir="ltr">
    <head>
        <meta charset="utf-8" />
        <title>Robotech - Admin & Dashboard Template</title>
        <meta  name="viewport"  content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <meta  content="Tailwind Multipurpose Admin & Dashboard Template"  name="description"/>
        <meta content="" name="Mannatthemes" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="viewsAdmin/assets/images/favicon.ico" />

        <!-- Css -->
        <!-- Main Css -->
        <link rel="stylesheet" href="viewsAdmin/assets/libs/icofont/icofont.min.css">
        <link href="viewsAdmin/assets/libs/flatpickr/flatpickr.min.css" type="text/css" rel="stylesheet">
        <link rel="stylesheet" href="viewsAdmin/assets/css/tailwind.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>
    </head>

    <body data-layout-mode="light"  data-sidebar-size="default" data-theme-layout="vertical" class="bg-[#EEF0FC] dark:bg-gray-900">

        <jsp:include page="components/leftBar.jsp" />

        <jsp:include page="components/topBar.jsp" />


        <div class="ltr:flex flex-1 rtl:flex-row-reverse">
            <div class="page-wrapper relative ltr:ms-auto rtl:me-auto rtl:ms-0 w-[calc(100%-260px)] px-4 pt-[64px] duration-300">
                <div class="xl:w-full">        
                    <div class="flex flex-wrap">
                        <div class="flex items-center py-4 w-full">
                            <div class="w-full">                    
                                <div class="">
                                    <div class="flex flex-wrap justify-between">
                                        <div class="items-center ">
                                            <h1 class="font-medium text-3xl block dark:text-slate-100">Blogs List</h1>
                                            <ol class="list-reset flex text-sm">
                                                <li><a href="#" class="text-gray-500 dark:text-slate-400">Robotech</a></li>
                                                <li><span class="text-gray-500 dark:text-slate-400 mx-2">/</span></li>
                                                <li class="text-gray-500 dark:text-slate-400">Admin</li>
                                                <li><span class="text-gray-500 dark:text-slate-400 mx-2">/</span></li>
                                                <li class="text-primary-500 hover:text-primary-600 dark:text-primary-400">Blogs List</li>
                                            </ol>
                                        </div>
                                        <div class="flex items-center">
                                            <div class="today-date leading-5 mt-2 lg:mt-0 form-input w-auto rounded-md border inline-block border-primary-500/60 dark:border-primary-500/60 text-primary-500 bg-transparent px-3 py-1 focus:outline-none focus:ring-0 placeholder:text-slate-400/70 placeholder:font-normal placeholder:text-sm hover:border-primary-400 focus:border-primary-500 dark:focus:border-primary-500  dark:hover:border-slate-700">
                                                <input type="text" class="dash_date border-0 focus:border-0 focus:outline-none" readonly  required="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--end container-->

                <div class="xl:w-full  min-h-[calc(100vh-138px)] relative pb-14"> 
                    <div class="grid grid-cols-12 sm:grid-cols-12 md:grid-cols-12 lg:grid-cols-12 xl:grid-cols-12 gap-4">
                        <div class="col-span-12 sm:col-span-12 md:col-span-12 lg:col-span-12 xl:col-span-12">
                            <div class="w-full relative mb-4">  
                                <div class="flex-auto p-0 md:p-4">
                                    <div class="mb-4 border-b border-gray-200 dark:border-slate-700" data-fc-type="tab">
                                        <ul class="flex flex-wrap -mb-px text-sm font-medium text-center" aria-label="Tabs">
                                        </ul>
                                    </div>
                                    <h2 class="text-2xl font-bold mb-4">Blog Posts</h2>
                                    <div class="flex mb-4">
                                        <div class="w-1/3 pr-4">
                                            <form action="blogManager" method="get" class="space-y-4">
                                                <div>
                                                    <label for="title" class="block text-sm font-medium text-gray-700">Search by Title</label>
                                                    <input type="text" id="title" name="title" value="${title}" placeholder="Search by title" class="mt-1 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md">
                                                </div>
                                                <div>
                                                    <label for="role" class="block mb-2">Select Category</label>
                                                    <select name="category" id="cate" class="border p-2 w-full mb-4">
                                                        <option value="">-- All --</option>
                                                        <c:forEach var="cate" items="${listCate}">
                                                            <option value="${cate.id}" ${cate.id == selectedCateId ? 'selected' : ''}>${cate.name}</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                                <div>
                                                    <label for="role" class="block mb-2">Select Author</label>
                                                    <select name="author" id="auth" class="border p-2 w-full mb-4" ">
                                                        <option value="">-- All --</option>
                                                        <c:forEach var="a" items="${listAut}">
                                                            <option value="${a.id}" ${a.id == selectedUserId ? 'selected' : ''}>${a.getFullname()}</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                                <div>
                                                    <label for="role" class="block mb-2">Select Status</label>
                                                    <select name="status" id="auth" class="border p-2 w-full mb-4" ">
                                                        <option value="">-- All --</option>
                                                        <option value="Active" ${selectedStatus == 'Active' ? 'Selected' : ''}>Active</option>
                                                        <option value="InActive" ${selectedStatus == 'InActive' ? 'Selected' : ''} >InActive</option>
                                                    </select>
                                                </div>
                                                <button type="submit" class="w-full bg-blue-500 text-white py-2 px-4 rounded">Filter</button>
                                            </form>
                                        </div>
                                        <div class="w-2/3">
                                            <a href="blogManager?action=new" class="bg-green-500 text-white py-2 px-4 rounded mb-4 inline-block">Add New Blog</a>
                                            <table id="userTable" class="min-w-full bg-white shadow-md rounded">
                                                <thead class="bg-gray-50">
                                                    <tr>
                                                        <th data-sort="Number" class="px-4 py-2">ID</th>
                                                        <th data-sort="text" class="px-4 py-2">Thumbnail</th>
                                                        <th data-sort="text" class="px-4 py-2">Title</th>
                                                        <th data-sort="text" class="px-4 py-2">Category</th>
                                                        <th data-sort="text" class="px-4 py-2">Author</th>
                                                        <th data-sort="Number" class="px-4 py-2">Modified</th>
                                                        <th data-sort="text" class="px-4 py-2">Status</th>
                                                        <th class="px-4 py-2">Actions</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="blog" items="${listBlogs}">
                                                        <tr>
                                                            <td class="border px-4 py-2">${blog.id}</td>
                                                            <td class="border px-4 py-2"><img src="${blog.cover_img}" alt="${blog.title}" class="w-16 h-16"></td>
                                                            <td class="border px-4 py-2">${blog.title}</td>
                                                            <td class="border px-4 py-2">${blog.blogCategory.name}</td>
                                                            <td class="border px-4 py-2">${blog.user.getFullname()}</td>
                                                            <td class="border px-4 py-2">${blog.modified_at}</td>
                                                            <td class="border px-4 py-2">${blog.status}</td>
                                                            <td class="border px-4 py-2">
                                                                <a href="blogManager?action=edit&id=${blog.id}" class="bg-yellow-500 text-white py-1 px-2 rounded">Detail</a>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                            <nav aria-label="Page navigation" class="mt-4">
                                                <ul class="inline-flex -space-x-px">
                                                    <c:forEach var="i" begin="1" end="${totalPages}">
                                                        <form action="blogManager">
                                                            <input type="text" name="author" value="${selectedUserId}" hidden=""/>
                                                            <input type="text" name="category" value="${selectedCateId}"  hidden=""/>
                                                            <input type="text" name="title" value="${title}" hidden=""/>
                                                            <input type="text" name="status" value="${selectedStatus}" hidden=""/>
                                                            <input type="text" name="page" value="${i}" hidden=""/>
                                                            <li class="${currentPage == i ? 'bg-blue-500 text-white' : 'bg-white text-gray-500'} border border-gray-300 py-2 px-3">
                                                                <button type="submit" class="page-link">${i}</a>
                                                            </li>
                                                        </form>
                                                    </c:forEach>
                                                </ul>
                                            </nav>
                                        </div>
                                    </div>              
                                </div><!--end card-->                                  
                            </div><!--end col-->                        
                        </div> <!--end grid-->                                        
                        <!-- footer -->
                        <div class="absolute bottom-0 -left-4 -right-4 block print:hidden border-t p-4 h-[52px] dark:border-slate-700/40">
                            <div class="container">
                                <!-- Footer Start -->
                                <footer
                                    class="footer bg-transparent  text-center  font-medium text-slate-600 dark:text-slate-400 md:text-left "
                                    >
                                    &copy;
                                    <script>
                                        var year = new Date();
                                        document.write(year.getFullYear());
                                    </script>
                                    Robotech
                                    <span class="float-right hidden text-slate-600 dark:text-slate-400 md:inline-block"
                                          >Crafted with <i class="ti ti-heart text-red-500"></i> by
                                        Mannatthemes</span
                                    >
                                </footer>
                                <!-- end Footer -->
                            </div>
                        </div>


                    </div><!--end container-->
                </div><!--end page-wrapper-->
            </div><!--end /div-->
            <!-- JAVASCRIPTS -->
            <script src="viewsAdmin/assets/libs/lucide/umd/lucide.min.js"></script>
            <script src="viewsAdmin/assets/libs/simplebar/simplebar.min.js"></script>
            <script src="viewsAdmin/assets/libs/flatpickr/flatpickr.min.js"></script>
            <script src="viewsAdmin/assets/libs/@frostui/tailwindcss/frostui.js"></script>

            <script src="viewsAdmin/assets/libs/apexcharts/apexcharts.min.js"></script>
            <script src="viewsAdmin/assets/js/pages/analytics-index.init.js"></script>
            <script src="viewsAdmin/assets/js/app.js"></script>
            <!-- JAVASCRIPTS -->
            <script src="${pageContext.request.contextPath}/viewsAdmin/assets/js/dataTableCommon.js"></script>
            <script>
                                        $(document).ready(function () {
                                            $('#cate').select2({
                                                placeholder: "Select Category",
                                                allowClear: true,
                                                width: '100%' // Ensures the select2 dropdown width matches the original select element
                                            });
                                        });
                                        $(document).ready(function () {
                                            $('#auth').select2({
                                                placeholder: "Select Author",
                                                allowClear: true,
                                                width: '100%' // Ensures the select2 dropdown width matches the original select element
                                            });
                                        });
            </script>
    </body>
</html>