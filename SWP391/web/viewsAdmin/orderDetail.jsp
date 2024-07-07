<%-- 
    Document   : orderDetail
    Created on : Jul 2, 2024, 12:27:42 PM
    Author     : admin
--%>

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
                                            <h1 class="font-medium text-3xl block dark:text-slate-100">Order #886193</h1>
                                            <ol class="list-reset flex text-sm">
                                                <li><a href="#" class="text-gray-500 dark:text-slate-400">Robotech</a></li>
                                                <li><span class="text-gray-500 dark:text-slate-400 mx-2">/</span></li>
                                                <li class="text-gray-500 dark:text-slate-400">Admin</li>
                                                <li><span class="text-gray-500 dark:text-slate-400 mx-2">/</span></li>
                                                <li class="text-primary-500 hover:text-primary-600 dark:text-primary-400">Details</li>
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
                            <div class="mb-4">
                                <div class="grid grid-cols-12">
                                    <div class="col-span-12 sm:col-span-12 md:col-span-5 lg:col-span-5 xl:col-span-5">
                                        <div class="text-2xl mb-3">Order Information</div>
                                        <div class="bg-[#1b1b22] shadow-sm dark:shadow-slate-700/10 dark:bg-gray-900  rounded-md w-full relative mb-4">

                                            <div class="flex-auto p-4 pt-0 -mt-1">
                                                <div class="grid grid-cols-12 sm:grid-cols-12 md:grid-cols-12 lg:grid-cols-12 xl:grid-cols-12 gap-4 text-white py-3">

                                                    <div class="col-span-12 sm:col-span-6 md:col-span-4 lg:col-span-4 xl:col-span-4">
                                                        ID Order                              
                                                    </div>
                                                    <div class="col-span-12 sm:col-span-6 md:col-span-8 lg:col-span-8 xl:col-span-8 text-end self-center">
                                                        ${order.id}
                                                    </div>
                                                </div>

                                                <div class="grid grid-cols-12 sm:grid-cols-12 md:grid-cols-12 lg:grid-cols-12 xl:grid-cols-12 gap-4 text-white py-3">
                                                    <div class="col-span-12 sm:col-span-6 md:col-span-8 lg:col-span-8 xl:col-span-8">
                                                        Customer Name                             
                                                    </div>
                                                    <div class="col-span-12 sm:col-span-6 md:col-span-4 lg:col-span-4 xl:col-span-4 text-end self-center">
                                                        ${order.getUser().first_name} ${order.getUser().last_name}
                                                    </div>
                                                </div>
                                                <div class="grid grid-cols-12 sm:grid-cols-12 md:grid-cols-12 lg:grid-cols-12 xl:grid-cols-12 gap-4 text-white py-3">
                                                    <div class="col-span-12 sm:col-span-6 md:col-span-8 lg:col-span-8 xl:col-span-8">
                                                        Email                             
                                                    </div>
                                                    <div class="col-span-12 sm:col-span-6 md:col-span-4 lg:col-span-4 xl:col-span-4 text-end self-center overflow-hidden">
                                                        ${order.getUser().email}
                                                    </div>
                                                </div>
                                                <div class="grid grid-cols-12 sm:grid-cols-12 md:grid-cols-12 lg:grid-cols-12 xl:grid-cols-12 gap-4 text-white py-3">
                                                    <div class="col-span-12 sm:col-span-6 md:col-span-4 lg:col-span-4 xl:col-span-4 text-white">
                                                        Phone Number                              
                                                    </div>
                                                    <div class="col-span-12 sm:col-span-6 md:col-span-8 lg:col-span-8 xl:col-span-8 text-end self-center text-white">
                                                        ${order.getUser().telephone}
                                                    </div>
                                                </div>
                                                <div class="grid grid-cols-12 sm:grid-cols-12 md:grid-cols-12 lg:grid-cols-12 xl:grid-cols-12 gap-4 text-white py-3">
                                                    <div class="col-span-12 sm:col-span-6 md:col-span-4 lg:col-span-4 xl:col-span-4 text-white">
                                                        Order Date                           
                                                    </div>
                                                    <div class="col-span-12 sm:col-span-6 md:col-span-8 lg:col-span-8 xl:col-span-8 text-end self-center text-white">
                                                        ${order.createdAt.toString()}
                                                    </div>
                                                </div>
                                                <div class="grid grid-cols-12 sm:grid-cols-12 md:grid-cols-12 lg:grid-cols-12 xl:grid-cols-12 gap-4 text-white py-3">
                                                    <div class="col-span-12 sm:col-span-6 md:col-span-4 lg:col-span-4 xl:col-span-4 text-white">
                                                       Total               
                                                    </div>
                                                    <div class="col-span-12 sm:col-span-6 md:col-span-8 lg:col-span-8 xl:col-span-8 text-end self-center text-white">
                                                        ${order.orderTotal}         
                                                    </div>
                                                </div>
                                                <div class="grid grid-cols-12 sm:grid-cols-12 md:grid-cols-12 lg:grid-cols-12 xl:grid-cols-12 gap-4 text-white py-3">
                                                    <div class="col-span-12 sm:col-span-6 md:col-span-4 lg:col-span-4 xl:col-span-4 text-white">
                                                        Sale Name                  
                                                    </div>
                                                    <div class="col-span-12 sm:col-span-6 md:col-span-8 lg:col-span-8 xl:col-span-8 text-end self-center text-white">
                                                        ${order.getSale().first_name} ${order.getSale().last_name}
                                                    </div>
                                                </div>
                                                <div class="grid grid-cols-12 sm:grid-cols-12 md:grid-cols-12 lg:grid-cols-12 xl:grid-cols-12 gap-4 text-white py-3">
                                                    <div class="col-span-12 sm:col-span-6 md:col-span-4 lg:col-span-4 xl:col-span-4 text-white">
                                                        Status                           
                                                    </div>
                                                    <div class="col-span-12 sm:col-span-6 md:col-span-8 lg:col-span-8 xl:col-span-8 text-end self-center text-white">
                                                        ${order.getOrderStatus().name}
                                                    </div>
                                                </div>
                                            </div> 
                                        </div><!--end card-body-->
                                    </div> <!--end inner-grid-->    
                                    <div class="col-span-12 sm:col-span-12 md:col-span-2 lg:col-span-2 xl:col-span-2"></div>
                                    <div class="col-span-12 sm:col-span-12 md:col-span-5 lg:col-span-5 xl:col-span-5">
                                        <div class="text-2xl mb-3">Receiver Information</div>
                                        <div class="bg-[#1b1b22] shadow-sm dark:shadow-slate-700/10 dark:bg-gray-900  rounded-md w-full relative mb-4">

                                            <div class="flex-auto p-4 pt-0 -mt-1">


                                                <div class="grid grid-cols-12 sm:grid-cols-12 md:grid-cols-12 lg:grid-cols-12 xl:grid-cols-12 gap-4 text-white py-3">
                                                    <div class="col-span-12 sm:col-span-6 md:col-span-8 lg:col-span-8 xl:col-span-8">
                                                        Full Name                             
                                                    </div>
                                                    <div class="col-span-12 sm:col-span-6 md:col-span-4 lg:col-span-4 xl:col-span-4 text-end self-center">
                                                        ${order.getRecipient()}
                                                    </div>
                                                </div>

                                                <div class="grid grid-cols-12 sm:grid-cols-12 md:grid-cols-12 lg:grid-cols-12 xl:grid-cols-12 gap-4 text-white py-3">
                                                    <div class="col-span-12 sm:col-span-6 md:col-span-8 lg:col-span-8 xl:col-span-8">
                                                        Gender                            
                                                    </div>
                                                    <div class="col-span-12 sm:col-span-6 md:col-span-4 lg:col-span-4 xl:col-span-4 text-end self-center">
                                                        ${order.getUser().gender?"Male":"Female"}
                                                    </div>
                                                </div>
                                                <div class="grid grid-cols-12 sm:grid-cols-12 md:grid-cols-12 lg:grid-cols-12 xl:grid-cols-12 gap-4 text-white py-3">
                                                    <div class="col-span-12 sm:col-span-6 md:col-span-8 lg:col-span-8 xl:col-span-8">
                                                        Email                             
                                                    </div>
                                                    <div class="col-span-12 sm:col-span-6 md:col-span-4 lg:col-span-4 xl:col-span-4 text-end self-center overflow-hidden">
                                                        ${order.getEmail()}
                                                    </div>
                                                </div>
                                                <div class="grid grid-cols-12 sm:grid-cols-12 md:grid-cols-12 lg:grid-cols-12 xl:grid-cols-12 gap-4 text-white py-3">
                                                    <div class="col-span-12 sm:col-span-6 md:col-span-4 lg:col-span-4 xl:col-span-4 text-white">
                                                        Phone Number                              
                                                    </div>
                                                    <div class="col-span-12 sm:col-span-6 md:col-span-8 lg:col-span-8 xl:col-span-8 text-end self-center text-white">
                                                        ${order.getRecipientPhone()}
                                                    </div>
                                                </div>
                                                <div class="grid grid-cols-12 sm:grid-cols-12 md:grid-cols-12 lg:grid-cols-12 xl:grid-cols-12 gap-4 text-white py-3">
                                                    <div class="col-span-12 sm:col-span-6 md:col-span-4 lg:col-span-4 xl:col-span-4 text-white">
                                                        Address                    
                                                    </div>
                                                    <div class="col-span-12 sm:col-span-6 md:col-span-8 lg:col-span-8 xl:col-span-8 text-end self-center text-white">
                                                        ${order.getAddress()}
                                                    </div>
                                                </div>



                                            </div> 
                                        </div><!--end card-body-->
                                    </div> <!--end inner-grid-->  

                                </div>

                            </div>

                            <div id="myTabContent">
                                <div class="active  p-4 bg-gray-50 rounded-lg dark:bg-gray-800/40" id="all" role="tabpanel" aria-labelledby="all-tab">
                                    <div class="grid grid-cols-1 p-0 md:p-4">
                                        <div class="sm:-mx-6 lg:-mx-8">
                                            <div class="relative overflow-x-auto block w-full sm:px-6 lg:px-8">

                                                <table id="userTable" class="w-full">
                                                    <thead class="bg-gray-50 dark:bg-gray-700/20">
                                                        <tr>
                                                            <th scope="col" data-sort="text" class="p-3 text-xs font-medium tracking-wider text-left text-gray-700 dark:text-gray-400 uppercase">
                                                                PRODUCT & TITLE
                                                            </th>
                                                            <th scope="col" data-sort="text" class="p-3 text-xs font-medium tracking-wider text-left text-gray-700 dark:text-gray-400 uppercase">
                                                                PRICE
                                                            </th>
                                                            <th scope="col" data-sort="text" class="p-3 text-xs font-medium tracking-wider text-left text-gray-700 dark:text-gray-400 uppercase">
                                                                QUANTITY
                                                            </th>
                                                            <th scope="col" data-sort="number" class="p-3 text-xs font-medium tracking-wider text-left text-gray-700 dark:text-gray-400 uppercase">
                                                                TOTAL
                                                            </th>
                                                            <th scope="col" data-sort="text" class="p-3 text-xs font-medium tracking-wider text-left text-gray-700 dark:text-gray-400 uppercase">
                                                                MODIFIED AT
                                                            </th>
                                                            <th scope="col" class="p-3 text-xs font-medium tracking-wider text-left text-gray-700 dark:text-gray-400 uppercase">
                                                                STATUS
                                                            </th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach var="o" items="${list}">
                                                            <!-- 1 -->
                                                            <tr class="bg-white border-b border-dashed dark:bg-gray-900 dark:border-gray-700/40">

                                                                <td class="p-3 text-sm text-gray-500 whitespace-nowrap dark:text-gray-400">
                                                                    <a href="product?service=detail&name=${o.product.name}&brand=${o.product.brand.name}">
                                                                        <div class="flex items-center">

                                                                            <img src="${o.getImgView()}" alt="" class="me-2 h-8 inline-block" />
                                                                            <span class="item_cart">${o.getNameView()}</span>
                                                                        </div>
                                                                    </a>
                                                                </td>
                                                                <td class="p-3 font-semibold text-lg text-gray-800 whitespace-nowrap dark:text-gray-400">
                                                                    <strong>${o.getPriceName()}</strong>
                                                                </td>
                                                                <td class="p-3 text-sm text-gray-500 whitespace-nowrap dark:text-gray-400">
                                                                    ${o.quantity}
                                                                </td>
                                                                <td class="p-3 text-sm text-gray-500 whitespace-nowrap dark:text-gray-400">
                                                                    <strong>${o.price}</strong>
                                                                </td>
                                                                <td class="p-3 text-sm text-gray-500 whitespace-nowrap dark:text-gray-400">
                                                                    <strong>${o.modifiedAt.toString()}</strong>
                                                                </td>
                                                                <td class="p-3 text-sm text-gray-500 whitespace-nowrap dark:text-gray-400">
                                                                    <c:if test="${order.getOrderStatus().name ==  'Success'}">
                                                                        <span class="bg-green-600/5 text-green-600 text-[11px] font-medium px-2.5 py-0.5 rounded h-5">Success</span>
                                                                    </c:if>
                                                                    <c:if test="${order.getOrderStatus().name ==  'Pending'}">
                                                                        <span class="bg-red-600/5 text-red-600 text-[11px] font-medium px-2.5 py-0.5 rounded h-5">Pending</span>
                                                                    </c:if>
                                                                </td>  
                                                            </tr>
                                                        </c:forEach>

                                                    </tbody>
                                                </table>                                                                                                  
                                            </div><!--end div
                                        </div><!--end div-->
                                        </div><!--end grid-->
                                        <div class="flex justify-between mt-4">

                                        </div>
                                    </div>
                                </div>
                            </div><!--end col-->

                            <form action="OrderDetailAdmin" method="post" class="my-4 grid grid-cols-1 gap-4 md:grid-cols-12">


                                <div class="md:col-span-5">
                                    <label for="id" class="block text-sm font-medium text-gray-700">Sale Note</label>
                                    <input value="${order.note}" type="text" name="note" class="mt-1 block w-full py-2 px-3 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
                                </div>

                                <input hidden name="orderid" value="${order.id}"/>
                                <!-- Submit Button -->
                                <div class="md:col-span-1 flex justify-end items-end">
                                    <button type="submit" class="inline-flex items-center px-4 py-2 border border-transparent text-sm font-medium rounded-md shadow-sm text-dark bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                                        Update
                                    </button>
                                </div>
                                <div class="col-span-12">Order Management</div>
                                <!-- Status Filter -->
                                <div class="md:col-span-2">
                                    <label for="status" class="block text-sm font-medium text-gray-700">Status</label>
                                    <select name="status" id="status" class="mt-1 block w-full py-2 px-3 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
                                        <option value="">Select Status</option>
                                        <option value="2" <c:if test="${order.getOrderStatus().name == 'Success'}">selected</c:if>>Success</option>
                                        <option value="1"<c:if test="${order.getOrderStatus().name == 'Pending'}">selected</c:if>>Pending</option>

                                            <!-- Add more status options as needed -->
                                        </select>
                                    </div>

                                    <div class="md:col-span-2">
                                        <label for="id" class="block text-sm font-medium text-gray-700">Sale Name</label>
                                        <select name="sale" id="sale" class="mt-1 block w-full py-2 px-3 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
                                            <option value="">Select Saler</option>
                                        <c:forEach items="${users}" var="u">
                                            <c:if test="${u.role_id == 3}">
                                                <option value="${u.id}" <c:if test="${order.saleId == u.id}">selected</c:if>>${u.last_name}</option>
                                            </c:if>
                                        </c:forEach>

                                        <!-- Add more status options as needed -->
                                    </select>
                                </div>
                            </form>

                        </div> <!--end grid-->     


                    </div><!--end col-->
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
        <!-- <div class="menu-overlay"></div> -->
        <script src="viewsAdmin/assets/libs/lucide/umd/lucide.min.js"></script>
        <script src="viewsAdmin/assets/libs/simplebar/simplebar.min.js"></script>
        <script src="viewsAdmin/assets/libs/flatpickr/flatpickr.min.js"></script>
        <script src="viewsAdmin/assets/libs/@frostui/tailwindcss/frostui.js"></script>

        <script src="viewsAdmin/assets/libs/apexcharts/apexcharts.min.js"></script>
        <script src="viewsAdmin/assets/js/pages/analytics-index.init.js"></script>
        <script src="viewsAdmin/assets/js/app.js"></script>
        <!-- JAVASCRIPTS -->
    </body>
</html>